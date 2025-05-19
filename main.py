import gradio as gr

def func(input: str):
    return input+" hi, how are you?"

def main():
    print("main start")
    ui = gr.Interface(fn=func, inputs="textbox", outputs="textbox")
    ui.launch(share=True)

if __name__=="__main__": 
    main()
