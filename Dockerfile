# FROM rafaelleinio/docker-java-python

# RUN pip install --upgrade pip
# RUN pip install "pyspark==3.0.1"
# RUN pip install "butterfree<2.0.0"
# ENV IS_RUNNING_IN_CONTAINER true
# RUN echo $IS_RUNNING_IN_CONTAINER

FROM amazoncorretto:8

RUN yum -y update
RUN yum -y install yum-utils
RUN yum -y groupinstall development

RUN yum list python3*
RUN yum -y install python3 python3-dev python3-pip python3-virtualenv

RUN python -V
RUN python3 -V

ENV PYSPARK_DRIVER_PYTHON python3
ENV PYSPARK_PYTHON python3

RUN pip3 install --upgrade pip
RUN pip3 install awswrangler

RUN python3 -c "import awswrangler as wr"
