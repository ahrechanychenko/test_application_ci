FROM python:3.8.0-slim
WORKDIR /app
ENV PORT=80
ADD .. /app
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
CMD gunicorn app:app --bind 0.0.0.0:$PORT --reload