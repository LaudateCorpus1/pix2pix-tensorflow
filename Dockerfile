# Use an existing docker image as a base
FROM tensorflow/tensorflow
# Download and install a dependency
RUN apt-get update && apt-get install -y --no-install-recommends \
    git=1:2.7.4-0ubuntu1.6 \
    wget=1.17.1-1ubuntu1.4 \
    unzip=6.0-20ubuntu1 \
    zip=3.0-11

RUN pip3 install --upgrade pip

RUN pip3 install ai-integration==1.0.6

COPY . /home/pix2pix-tensorflow/

WORKDIR /home/pix2pix-tensorflow/

#ENTRYPOINT ["python", "pix2pix.py"]