FROM ubuntu:16.04

RUN apt-get update && apt-get upgrade -y \
        python3-pip \
        python3-tk

RUN pip3 install --upgrade pip
RUN pip3 install \
        matplotlib \
        numpy \
        scipy \
        sklearn

RUN python3 -V

# Install TensorFlow CPU version from central repo
RUN pip3 install tensorflow

WORKDIR /root

CMD ["/bin/bash"]
