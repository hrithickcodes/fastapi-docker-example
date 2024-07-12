from fastapi import FastAPI

app = FastAPI()

@app.get("/home")
def root():
    return {"message": "Hello from Docker!"}
