FROM python:3.6.6-slim
RUN pip install falcon requests gunicorn
USER nobody
COPY app /opt/app
WORKDIR /opt/app
EXPOSE 9090
CMD ["gunicorn", "--bind=0.0.0.0:9090", "--workers=2", "main:app"]
