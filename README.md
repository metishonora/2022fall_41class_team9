# 2022fall_41class_team9
![image](https://user-images.githubusercontent.com/82107503/207755558-5599e9de-51a0-45c1-8f17-931e43d557f3.png)


## Project Topology
Project: codingplatform
- APP1: codes
- APP2: onlinejudges
- APP3: problems
- APP4: analysis


## Project Environment
every materials are based on the "BOOK, Chapter 6"
PLZ Watch the BOOK!

- django: 3.1.6
- django_rest_framework: 3.12.2

## How to run locally
1. docker run -it -d -p 3000:3000 --name npm node:lts
2. docker exec -it npm /bin/bash
3. git clone
4. cd 2022fall_41class_team9
5. apt update && apt install tmux pip

On pane#0:

6. pip install -r requirements.txt
7. cd backend
8. python3 manage.py makemigration
8. python3 manage.py migrate
9. python3 manage.py runserver 0.0.0.0:8800

On pane#1:

10. cd frontend
11. npm install
12. npm start

!! YOU HAVE TO INSERT AN APPROPRIATE CODEX API KEY IN src/codex.py
