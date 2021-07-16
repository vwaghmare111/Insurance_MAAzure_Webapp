# syntax=docker/dockerfile:1

FROM python:3.8.8

RUN pip install virtualenv
ENV VIRTUAL_ENV=/venv
RUN virtualenv venv -p python3
ENV PATH="VIRTUAL_ENV/bin:$PATH"

WORKDIR /app
ADD . /app

# Install dependencies
RUN pip3 install -r requirements.txt

# Expose port
EXPOSE 5000


# Run the application:
CMD ["python", "app.py"]
