library(plumber)
library(tesseract)
library(httr)
library(jsonlite)

# Function to Extract Name and DOB
extract_name_dob <- function(image_url, lang = "eng") {
  eng <- tesseract(language = lang)
  text <- tesseract::ocr(image_url, engine = eng)
  
  # Clean extracted text
  cleaned_text <- gsub("[[:punct:]]", "", text)  # Remove punctuation
  cleaned_text <- gsub("\\s+", " ", cleaned_text)  # Normalize spaces
  cleaned_text <- trimws(cleaned_text)  # Trim whitespace
  
  # Validate OCR output
  if (nchar(cleaned_text) < 10) {
    stop("OCR returned insufficient text (potential image quality issue)")
  }
  
  print(cleaned_text)
  
  # Define the Ollama API URL
  ollama_url <- "http://localhost:11434/api/generate"
  
  # Updated system prompt
  system_prompt <- "Extract the person's name and date of birth from the given text. Respond ONLY with this JSON format:\n\n{\"name\": \"extracted name\", \"dob\": \"extracted dob\"}\n\nNo extra text, explanations, or newlines."
  
  # Request payload for Ollama
  request_body <- list(
    model = "tinyllama",
    prompt = paste(system_prompt, cleaned_text),
    stream = FALSE
  )
  
  # Send request to Ollama
  response <- POST(
    url = ollama_url,
    body = toJSON(request_body, auto_unbox = TRUE),
    encode = "json"
  )
  
  # Parse Ollama response
  response_content <- content(response, as = "text", encoding = "UTF-8")
  print(response_content)  # Debugging: Print raw response
  
  # Extract only valid JSON response
  extracted_json <- tryCatch(
    {
      parsed_response <- fromJSON(response_content)
      
      # Handle cases where Ollama might wrap JSON inside another response field
      if (!is.null(parsed_response$response)) {
        jsonlite::fromJSON(parsed_response$response)
      } else {
        list(name = "", dob = "")
      }
    },
    error = function(e) {
      list(name = "", dob = "")
    }
  )
  
  return(extracted_json)
}

#* @post /extract_name_dob
#* @param image_url The URL of the image
#* @serializer json
function(image_url, lang = "eng") {
  result <- extract_name_dob(image_url, lang)
  return(result)
}
