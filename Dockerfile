#the app that we will working with
FROM python:3
#create a directory in container and enter to that directory
WORKDIR /FirstProj
#copy the same file from my machine to docker container
COPY requirements.txt requirements.txt
#write a command that will install pip3 from requirements.txt
RUN pip3 install -r requirements.txt
# copy for my machine to docker container
COPY . .
ENV FLASK_APP=PythonProj.py
#make an ip that can access from other computer
ENV FLASK_RUN_HOST=0.0.0.0
#expose to port
EXPOSE 8080
#make a access to write commands in the docker container
ENTRYPOINT [ "python" ]
# commands on docker container
CMD [ "PythonProj.py" ]