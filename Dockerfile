FROM python:3.10

COPY ./requirements.txt .
RUN pip install -r requirements.txt

COPY ./app ./app
COPY ./app/model.pkl ./model.pkl
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]