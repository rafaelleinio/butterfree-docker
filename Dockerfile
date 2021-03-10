FROM rafaelleinio/docker-java-python

RUN pip install --upgrade pip

RUN pip install butterfree<2.0.0
