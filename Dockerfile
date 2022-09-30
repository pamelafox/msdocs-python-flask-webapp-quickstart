# syntax=docker/dockerfile:1

#Download Python from DockerHub and use it
FROM python:3.9.13

#Set the working directory in the Docker container
WORKDIR /code

#Copy the dependencies file to the working directory
COPY requirements.txt .

#Install the dependencies
RUN pip3 install -r requirements.txt

#Copy the Flask app code to the working directory
COPY . .

#Run the container
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]