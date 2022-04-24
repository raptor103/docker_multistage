FROM python:3.6-alpine as builder
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt

FROM python:3.6-alpine
COPY --from=builder /app /app
COPY --from=builder /usr/local/lib/python3.6 /usr/local/lib/python3.6
WORKDIR /app
ENTRYPOINT ["python3"]
CMD ["app.py"]
