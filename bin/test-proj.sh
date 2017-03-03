#! /bin/bash
source ./bin/env.sh

# 2017-03-02 testing out this docker build command - don't know how to pass in env vars yet
docker build -t mikethecanuck/homeless-service .
# docker build -t $DOCKER_REPO/$DOCKER_IMAGE .
# docker build -t "$DOCKER_REPO"/"$DOCKER_IMAGE" .

# 2017-03-02 If the above docker build doesn't work, this might be an alternative
# docker-compose build  

# 2017-03-02 this isn't working correctly - Zak can't get to work in Docker environment either
# docker-compose run homeless-service python manage.py test
