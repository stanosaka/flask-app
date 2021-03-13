FROM python:3.8

COPY ./requirements.txt /webapp/requirements.txt

WORKDIR /webapp

RUN pip install -r requirements.txt
RUN install flask

COPY webapp/* /webapp

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]
