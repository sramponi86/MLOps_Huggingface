from transformers import pipeline
import gradio as gradio
model = pipeline("summarization")

def predict(prompt):
    summary = model(prompt)[0]["summary_text"]
    return summary

with gradio.Blocks() as demo:
    textbox = gradio.Textbox(placeholder="Enter text block to summarize", lines=4)
    gradio.Interface(fn=predict, inputs=textbox, outputs="text")

demo.lauch()