# Use an existing docker image as a base
FROM tensorflow/tensorflow:1.14.0-gpu-py3-jupyter

# Download and install a dependency
RUN apt-get update && apt-get install -y --no-install-recommends \
    wget \
    unzip \
    zip

RUN pip3 install --upgrade pip

RUN pip3 install ai-integration==1.0.14

COPY . /home/pix2pix-tensorflow/

WORKDIR /home/pix2pix-tensorflow/

#ENTRYPOINT ["python", "pix2pix.py"]
