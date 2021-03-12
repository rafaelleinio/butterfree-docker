FROM rafaelleinio/docker-java-python

RUN pip install --upgrade pip
RUN pip install "pyspark==3.0.1"
RUN pip install "butterfree<2.0.0"
ENV IS_RUNNING_IN_CONTAINER true
RUN echo $IS_RUNNING_IN_CONTAINER
