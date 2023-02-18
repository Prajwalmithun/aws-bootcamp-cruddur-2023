FROM python:3.10-slim-buster 

# Create and switch to this directory when container starts 
WORKDIR /backend-flask

# Copy dependencies from local system to container
COPY requirements.txt .
RUN pip3 install -r requirements.txt 

# Copy application code from local system to container
COPY . . 

ENV FLASK_ENV=development 

EXPOSE ${PORT}

# host = 0.0.0.0 means it is exposed to public 
CMD ["python3","-m","flask","run","--host=0.0.0.0","--port=4567"]

