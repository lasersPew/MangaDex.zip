FROM python:3.11.6-bookworm

COPY ./MangaDexZip /MangaDexZip

RUN pip install -r /MangaDexZip/requirements.txt

RUN pip install uvicorn

EXPOSE 8000

CMD cd /MangDexZip && uvicorn MangaDexZip:main.app --host 0.0.0.0