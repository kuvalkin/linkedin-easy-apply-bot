FROM python:3.11

WORKDIR /app

COPY ./LinkedIn-Easy-Apply-Bot/requirements.txt .

RUN pip install -r requirements.txt

COPY ./LinkedIn-Easy-Apply-Bot .

CMD ["python", "main.py"]