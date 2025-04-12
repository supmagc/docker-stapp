FROM stashapp/stash:latest

# Install watchdog for file monitoring
#RUN pip install watchdog
RUN apk add py3-watchdog


