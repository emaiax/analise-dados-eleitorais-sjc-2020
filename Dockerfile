FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
	libopencv-dev \
  python3-pip \
	python3-opencv && \
  rm -rf /var/lib/apt/lists/*

RUN pip3 install numpy pandas matplotlib seaborn jupyter

EXPOSE 8888

CMD ["jupyter notebook --ip 0.0.0.0 --no-browser --allow-root"]
