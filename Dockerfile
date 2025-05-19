FROM python:3.12
WORKDIR /app
ENV FLASK_RUN_HOST=0.0.0.0
COPY requirements.txt .
RUN pip install -r requirements.txt
EXPOSE 7860
CMD ["python", "main.py"]
