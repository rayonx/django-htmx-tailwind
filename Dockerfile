# Use an official Python runtime as a parent image
FROM python:3.11

# Set an environment variable for the directory where the application code will live
ENV APP_HOME=/code

# Set the working directory to /code
WORKDIR ${APP_HOME}

# Copy the current directory contents into the container at /code
COPY . ${APP_HOME}

# Install required packages
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Upgrade pip
RUN pip install --upgrade pip

# Install dependencies
COPY Pipfile Pipfile.lock ${APP_HOME}/
RUN pip install pipenv && pipenv install --system --dev

# Expose the port django is listening on
EXPOSE 8000

ENTRYPOINT [ "./entrypoint.sh" ]