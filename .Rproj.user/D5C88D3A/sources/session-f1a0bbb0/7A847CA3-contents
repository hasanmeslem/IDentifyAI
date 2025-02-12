library(plumber)
library(tesseract)
library(stringr)
library(httr)
library(jsonlite)

# Define OCR function
extract_text_from_image <- function(image_url, lang = "eng") {
  eng <- tesseract(language = lang)
  text <- tesseract::ocr(image_url, engine = eng)
  
  # Remove all whitespace (spaces, newlines, tabs, etc.)
  cleaned_text <- gsub("[[:punct:]]", "", text)  # Remove all punctuation
  cleaned_text <- gsub("\\s+", " ", cleaned_text)  # Remove all spaces, tabs, and newlines
  cleaned_text <- trimws(cleaned_text)    # Trim leading/trailing spaces
  
  cleaned_text <- paste(cleaned_text, collapse = " ") # Flatten into a single string
  
  # Check if OCR returned meaningful text
  if (nchar(cleaned_text) < 10) {
    stop("OCR returned insufficient text (potential image quality issue)")
  }
  
  cleaned_text
}
#*@serializer text
#* @post /extract_text
#* @param image_url The URL of the image
function(image_url, lang = "eng") {
  text <- extract_text_from_image(image_url, lang)
  return(text)
}