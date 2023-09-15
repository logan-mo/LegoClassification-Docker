FROM python:3.10

WORKDIR /app 


ADD ./model.pkl ./model.pkl
ADD ./requirements.txt ./requirements.txt

RUN pip install -r requirements.txt
ADD app.py app.py

EXPOSE 8000

CMD ["uvicorn", "app:app"]