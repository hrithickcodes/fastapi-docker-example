# Layer 1
# FROM python:slim

# Layer 2
# WORKDIR /usr/src/app

# Layer 3
# COPY . .

# Layer 4
# EXPOSE 8000

# Layer 5
# RUN pip3 install -r requirements.txt

# Layer 6
# CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]

# If you change any file or modify, it will again reinstall the requirements.txt file
# Avoid this by properly utilizing layers!
FROM python:slim
EXPOSE 8000

WORKDIR /usr/src/app

# Copy the dependency file first and install it
COPY requirements.txt .
RUN pip3 install -r requirements.txt

COPY . .
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]