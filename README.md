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

## Install Python Library
In root directory
- pip3 install -r requirements.txt

When error occurs..
- pip3 install --upgrade pip

## How to run locally (수정중)
0. git clone in local directory

### Backend
1. docker pull stbaker517/env_be:first
2. docker run -it -p 8800:8800 -v <cloned_directory>:/2022fall_41class_team9 <pulled_image_ID>
(**Use docker images to see image ID)
3. cd 2022fall_41class_team9
4. pip install -r requirements.txt
5. cd backend
6. source myvenv/bin/activate
7. python3 manage.py makemigration
8. python3 manage.py migrate
9. python3 manage.py runserver 0.0.0.0:8800

### Frontend
1. docker run -it -d -p 3000:3000 --add-host host.docker.internal:host-gateway node:lts
2. docker exec -it <running_container_ID> /bin/bash
(**Use docker ps to see container ID)
3. git clone
4. cd 2022fall_41class_team9/frontend
5. npm install
6. npm start

## Usage
### SELECT with Serializers
```
from db.models import *
from db.serializers import *
user = UserSerializer(User.objects.get(pk=1))  # SELECT FROM User WHERE primary_key('user_id') = 1
user.data
```
You can get JSON data.

### SELECT *
```
Course.objects.all()
```

### INSERT INTO db
```
Course.objects.create(course_id='1', course_name='a_brand_new_course')
```

### DELETE FROM db
```
Course.objects.get(pk=1).delete()
```
