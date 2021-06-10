FROM python:latest
RUN mkdir blog
WORKDIR /blog
RUN python -m pip install --upgrade pip
COPY ./requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY ./ .
COPY starter.sh .
RUN python manage.py collectstatic
EXPOSE 8000
CMD ["/bin/bash","/blog/starter.sh"]
