# Using python3.8-alpine as the base image.
FROM python:3.8-alpine

# Copy all the files.
COPY . /app

# set work dir /app
WORKDIR /app

# install gcc, g++
RUN apk update && apk add --no-cache gcc g++

# install dependencies by requirements.txt
RUN pip install -r requirements.txt

# expose port 8671
EXPOSE 8671

# start app.
CMD ["python", "main.py"]