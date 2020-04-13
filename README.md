[![lavinia-k](https://circleci.com/gh/lavinia-k/udacity-ml.svg?style=svg)](https://app.circleci.com/pipelines/github/lavinia-k/udacity-ml)

## Project Overview

In this project, I learnt to apply the skills I acquired in the Udacity Cloud DevOps Engineer course to operationalize a Machine Learning Microservice API. 

I was given a pre-trained, `sklearn` model that had been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests my ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

My project goal was to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications.

* Test project code using linting
* Complete a Dockerfile to containerize this application
* Deploy containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase my abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Pre-requisites for Docker/Kubernetes

* Docker: Make sure Docker is installed locally and you have created a docker_access_token.txt with a Docker Hub token in the same directory as app.py and modified the Docker Hub username in the relevant files
* Kubernetes: Make sure Kubernetes is set up locally and you have a local Kubernetes cluster running

### Running API

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Calling API

1. Once you have the API running (whether through Docker or Kubernetes), you can run `./make_prediction.sh` to make a call to the API on port 8000.
