FROM python:3.12-slim
WORKDIR /app
COPY requirements-dev.txt .
RUN pip install -r requirements-dev.txt
COPY src/ ./src/
CMD ["python", "-m", "flask", "--app", "src.todo.app", "run", "--host=0.0.0.0"]
