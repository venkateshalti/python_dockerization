# get latest python 3.8 for alpine
FROM python:3.8-alpine

# copy the requirements file from local into the docker image /app folder
COPY ./requirements.txt /app/requirements.txt

# switch working directory to app directory
WORKDIR /app

# install the dependencies and packages in the requirements file that we copied to app folder in previous step
RUN pip install -r requirements.txt

# copy all files and directories from the local file to the image/app folder
COPY . /app

# run python application everytime docker is run
ENTRYPOINT [ "python" ]

# containerization.py is passed as an argument to the entrypoint above
CMD [ "containerization.py" ]

# when we run docker image, it will run 'python containerization.py'