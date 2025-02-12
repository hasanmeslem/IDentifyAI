# Installing Ollama and TinyLlama

This guide explains how to install **Ollama** and load the **TinyLlama** model.  
However, you can **use a different model** if you need better performance, as newer and larger models are available.

## 1. Install Ollama

Ollama is a lightweight way to run LLMs locally. To install it, follow these steps:

### For Linux & macOS

Run the following command in your terminal:

    curl -fsSL https://ollama.com/install.sh | sh

### For Windows

1. Download and install Ollama from [ollama.com](https://ollama.com).
2. Open **Command Prompt** or **PowerShell** and verify the installation:

    ollama --version

---

## 2. Install a Model (TinyLlama or Another Model)

Since my device has limited storage, I chose **TinyLlama**.  
However, you can **install a different model** if you need better accuracy or more capabilities.

To install **TinyLlama**, run:

    ollama pull tinyllama

If you want a more advanced model, check the available models at:  
🔗 [Ollama Model Library](https://ollama.com/library)

For example, to install a larger model like **Mistral**, you can run:

    ollama pull mistral

---

## 3. Running the Model

Once installed, you can run the model using:

    ollama run tinyllama

Or, if you installed a different model, replace `tinyllama` with the model's name:

    ollama run mistral

You can also use it in a Python script:

    import ollama

    response = ollama.chat("tinyllama", "Hello, how can I help you?")
    print(response)

If you are using a different model, replace `"tinyllama"` with your chosen model name.

---

## 4. Testing Name and DOB Extraction

You can test **TinyLlama** (or any installed model) by running:

    ollama run tinyllama "Extract name and DOB from: John Doe, born on 15th May 1995."

If you are using another model, simply replace `tinyllama` with the model's name:

    ollama run mistral "Extract name and DOB from: John Doe, born on 15th May 1995."

This should return the extracted **Name** and **Date of Birth** from the input text.

---

## 💡 Important Notes

- You can **use a different model** for better accuracy and performance.
- To see available models, visit [Ollama Model Library](https://ollama.com/library).
- Larger models require more storage, so ensure your device has enough space before downloading.

---

### 🔗 Related Resources

- [Ollama Documentation](https://ollama.com/docs)
- [Ollama Model Library](https://ollama.com/library)
