FROM public.ecr.aws/docker/library/python:3.10-slim

ENV DB_USERNAME=myuser
ENV DB_PASSWORD=mypassword
ENV DB_HOST=127.0.0.1
ENV DB_PORT=5433
ENV DB_NAME=mydatabase

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY ./analytics/ /app

# Install any needed packages specified in requirements.txt
# RUN pip install -r /app/requirements.txt
RUN pip install --upgrade pip && pip install -r requirements.txt && pip install --upgrade Flask Werkzeug

# Make port 5153 available
EXPOSE 5153

CMD ["python", "app.py"]