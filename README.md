                                🤖 **AI Meets OCR: Extracting ID Details with Precision** 🎯

📌 **Project Overview**

  This project leverages Optical Character Recognition (OCR) 🏷️ and Large Language Models (LLM) 🧠 to automatically extract a person's name and date of birth from an image of an ID card or any other text-based document. By combining Tesseract OCR 📸 for text extraction and Ollama's LLM for structured data extraction, the system ensures high accuracy in retrieving key details.

✨ **Features**

    ✅ Image to Text Extraction: Uses Tesseract OCR 📷 to convert ID images into text.
    
    ✅ AI-Powered Data Processing: Utilizes Ollama's LLM 🤖 to identify and extract names and dates of birth.
    
    ✅ REST API Interface: Built with Plumber in R 🛠️, allowing easy integration into applications.
    
    ✅ JSON Output: Returns structured JSON 📦 containing extracted name and date of birth.

🔍 **How It Works**

    1️⃣ OCR Processing: The uploaded image undergoes text extraction via Tesseract OCR.
    
    2️⃣ Text Cleaning: The extracted text is preprocessed by removing unnecessary characters and spaces.
    
    3️⃣ AI Extraction: The cleaned text is sent to Ollama's LLM, which identifies the name and date of birth.
    
    4️⃣ Structured Response: The final output is provided in JSON format:
    
    {
      "name": "...",
      "dob": "..."
    }

🛠️ **Technologies Used**

    🔹 R Programming Language
    
    🔹 Plumber (for building the API)
    
    🔹 Tesseract OCR (for text extraction from images)
    
    🔹 HTTR & JSONLite (for API communication and JSON handling)
    
    🔹 Ollama LLM (for natural language processing)

🛠️ **Technologies Used**

    🐍 R Programming Language
    
    🔌 Plumber (for building the API)
    
    📖 Tesseract OCR (for text extraction from images)
    
    🔗 HTTR & JSONLite (for API communication and JSON handling)
    
    🧠 Ollama LLM (for natural language processing)

📡 **API Usage**

    🏁 Endpoint: /extract_name_dob
    
    📥 Request:
  
    Method: POST
    
    Parameters:
    
    image_url (string) - URL of the image containing text.
    
    lang (string, optional) - Language for OCR processing (default: English).
  
    📤 Response:
  
    JSON output containing the extracted name and date of birth.

🚀 **Future Enhancements**
  
    🔄 -Support for additional document types (passports, driver’s licenses, etc.)
    
    🎯 -Improved accuracy with fine-tuned OCR models
    
    ☁️ -Deployment as a cloud-based service for wider accessibility

🎯 **Conclusion**

  This project showcases the powerful combination of OCR 🖼️ and AI 🤖 in automating data extraction tasks. By leveraging Tesseract OCR 📖 and LLM processing, it provides a reliable way to extract structured information from unstructured text in images. Ideal for applications in identity verification, automated form processing, and digital onboarding. 🚀🔍
