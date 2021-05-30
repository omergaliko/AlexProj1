FROM python:3
WORKDIR /FirstProj
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
ENV FLASK_APP=PythonProj.py
ENV FLASK_RUN_HOST=0.0.0.0
EXPOSE 8080
ENTRYPOINT [ "python" ]
CMD [ "PythonProj.py" ]