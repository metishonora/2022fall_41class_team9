FROM node:lts
COPY . .
RUN apt update -y
RUN apt install pip -y
RUN pip install -r requirements.txt
WORKDIR backend
RUN python3 manage.py makemigrations
RUN python3 manage.py migrate
EXPOSE 8800
ENTRYPOINT ["python3", "manage.py", "runserver", "0.0.0.0:8800"]
# WORKDIR frontend
# RUN npm install
# ENTRYPOINT ["npm", "start"]
