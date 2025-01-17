FROM debian:slim

WORKDIR /usr/local/bin

RUN groupadd --gid 1000 app && \
    useradd --uid 1000 --gid app --shell /bin/bash --create-home app

COPY --chown=app:app mo .

RUN chmod +x mo

USER appuser

ENTRYPOINT ["./mo"]
