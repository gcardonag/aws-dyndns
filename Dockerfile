FROM python:alpine3.8

COPY requirements.txt /requirements.txt

RUN pip3 install -r /requirements.txt

COPY dns_update.py /dns_update.py

COPY cronjobs /etc/crontabs/root

CMD ["crond", "-f", "-d", "8"]
