from fastapi import FastAPI

app = FastAPI()

@app.get("/")
async def read_root():
    return {"message": "Hello World"}

@app.get("/name/{your_name}")
async def read_item(your_name: str):
    return {"nickname": f"Taco {your_name}", "full_name": your_name}