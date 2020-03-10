FROM python:3.5
RUN pip install Flask redis
RUN useradd -ms /bin/bash md
USER md
WORKDIR /app
COPY app /app
CMD ["python","app.py"]