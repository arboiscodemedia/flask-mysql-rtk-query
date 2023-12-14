FROM python:3.9-slim as compiler

ENV PYTHONUNBUFFERED 1


WORKDIR /api/


RUN python -m venv /opt/venv

# Enable venv

ENV PATH="/opt/venv/bin:$PATH"


COPY ./requirements.txt /api/requirements.txt

RUN pip install -Ur requirements.txt
RUN pip install PyMySQL[rsa] 




FROM python:3.9-slim as runner

WORKDIR /api/

COPY --from=compiler /opt/venv /opt/venv


# Enable venv

ENV PATH="/opt/venv/bin:$PATH"

COPY . /api/
RUN chmod u+x /api/entrypoint.sh 



EXPOSE 5000
ENTRYPOINT ["sh", "entrypoint.sh"]

 