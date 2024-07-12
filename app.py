from fastapi import FastAPI

# Initiate the app
app = FastAPI()


# The routes are called path in FastAPI
@app.get("/")
def hello():
    return "Hello world!"

# We can also have dynamic id
@app.get("/data/{id}")
def get_id(id : int):
    return {f"Hey your id is {id}"}

