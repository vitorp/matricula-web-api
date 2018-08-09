#!/bin/bash
docker tag vitorp/rails registry.heroku.com/grade-web-api/web
docker login --username=_ --password=$HEROKU_API_KEY registry.heroku.com
docker push registry.heroku.com/grade-web-api/web

imageId=$(docker inspect registry.heroku.com/grade-web-api/web --format={{.Id}})
payload='{"updates":[{"type":"web","docker_image":"'"$imageId"'"}]}'
curl -n -X PATCH https://api.heroku.com/apps/grade-web-api/formation \
-d "$payload" \
-H "Content-Type: application/json" \
-H "Accept: application/vnd.heroku+json; version=3.docker-releases" \
-H "Authorization: Bearer $HEROKU_API_KEY"
