FROM php:8-alpine
WORKDIR /xaseco
COPY xaseco_116.zip .
# According to https://www.gamers.org/tmf/quickstart.html
RUN apk add --no-cache unzip           && \
    unzip xaseco_116.zip -d /          && \
    rm xaseco_116.zip                  && \
    mv ./newinstall/*.xml ./           && \
    mv ./newinstall/*.php ./includes/

ENTRYPOINT ["php", "aseco.php", "TMF"]
