FROM python:3.12
# set working directory of app
WORKDIR /app
# copy and install dependencies first
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
# environment and port setup
ENV FLASK_RUN_HOST=0.0.0.0
EXPOSE 7860
# run the app
CMD ["python", "main.py"]
