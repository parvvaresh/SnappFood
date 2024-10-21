FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY app.py ./
COPY static ./static
COPY pipline_predict ./
COPY templates ./templates
COPY final_models ./final_models
COPY pipline_predict.py ./

EXPOSE 5000

CMD ["python", "app.py"]
