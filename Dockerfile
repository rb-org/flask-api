FROM python:3.7.2-slim

ENV APP_DIR=/usr/src/flaskapi

RUN groupadd -r flaskapi && \
  useradd -r -g flaskapi flaskapi && \
  mkdir -p $APP_DIR

WORKDIR $APP_DIR

COPY --chown=flaskapi:flaskapi ./flaskapi $APP_DIR/

USER flaskapi

# Default Flask port
EXPOSE 5000

CMD ["python server.py"]
