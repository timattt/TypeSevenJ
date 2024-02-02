FROM spittet/python-mysql:latest
LABEL authors="timat"

WORKDIR /app

COPY job/ /app/

RUN pip install psycopg2

RUN mkdir -p /root/.postgresql
RUN wget "https://storage.yandexcloud.net/cloud-certs/CA.pem" --output-document /root/.postgresql/root.crt
RUN chmod 777 /root/.postgresql/root.crt

ENTRYPOINT ["python", "job.py"]
