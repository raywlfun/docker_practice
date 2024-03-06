# Specify what python version to use as the base interpreter
FROM python:3.11

# Set the target working directory in the docker container
WORKDIR /docker_practice

# Copy dependencies file into the working directory
COPY requirements.txt .

# Install specified dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Make sure that thisport is available OUTSIDE this container
EXPOSE 8989

# Command to run the following on container start
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8989", "--no-browser", "--allow-root"]
