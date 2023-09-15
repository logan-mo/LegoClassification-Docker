from fastapi import FastAPI
import joblib

app = FastAPI()

model = joblib.load("model.pkl")


@app.get("/")
def home():
    return {"message": "Hello World"}


@app.get("/predict")
def predict(sepal_length, sepal_width, petal_length, petal_width):
    prediction = model.predict([[sepal_length, sepal_width, petal_length, petal_width]])
    return {"prediction": str(prediction)}
