docker container prune --force || true
docker build . --rm --force-rm --compress --no-cache=true --pull --file Dockerfile -t mirror-bot
docker image ls
docker run --privileged --rm -i mirror-bot
python3 update.py && python3 -m bot
