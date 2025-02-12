library(httr)
library(jsonlite)

# Define the API URL
ollama_url <- "http://localhost:11434/api/generate"

# Define the text you want to analyze
text_input <- "My name is John Doe and I was born on January 15, 1995."

# Define the system prompt for extraction
system_prompt <- "Extract the person's name and date of birth from the given text. Output in JSON format: {\"name\": \"\", \"dob\": \"\"}."

# Create the request payload
request_body <- list(
  model = "tinyllama",# I used the least model of ollama u can use a newest model for clear data and more trained data
  prompt = paste(system_prompt, text_input),
  stream = FALSE
)

# Send the request to Ollama
response <- POST(
  url = ollama_url,
  body = toJSON(request_body, auto_unbox = TRUE),
  encode = "json"
)

# Parse the response
response_content <- content(response, as = "text", encoding = "UTF-8")
parsed_response <- fromJSON(response_content)

# Print the response
cat("Extracted Data:\n", parsed_response$response)
