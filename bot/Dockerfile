FROM python:3.11

WORKDIR /app

COPY ./LinkedIn-Easy-Apply-Bot/requirments.txt .

RUN pip install -r requirments.txt

COPY ./LinkedIn-Easy-Apply-Bot .

CMD ["python", "main.py"]