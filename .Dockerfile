FROM python:3.11.4-bookworm
# Pre-installed library and its version
RUN pip3 install ipykernel
RUN pip3 install numpy==1.25.2
RUN pip3 install pandas==2.0.3
# We don't used volume in docker-compose to install library b/c 
# the library will be installed only in the container not the docker image. 
CMD tail -f /dev/null