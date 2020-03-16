set -a 
source .env
set +a
curl -H "Authorization: token $GIT_TOKEN" \
     -H "Content-Type: application/json; charset=UTF-8" \
     -X PUT \
     -d '{
        "message": "re-publish GitHub Pages",
        "committer": {
            "name": "'$GIT_USER'",
            "email": "'$GIT_EMAIL'"
        },
        "content": "'$GIT_CONTENT'",
        "sha": "'$GIT_SHA'"
     }' \
     https://api.github.com/repos/psychobolt/psychobolt.github.io/contents/.publish