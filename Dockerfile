FROM python:3.8

WORKDIR /app

COPY requirements.txt .
RUN python3 -m venv venv && \
    . venv/bin/activate && \
    pip install --no-cache-dir -r requirements.txt

COPY src/main.py .

CMD ["./venv/bin/python", "./main.py"]
