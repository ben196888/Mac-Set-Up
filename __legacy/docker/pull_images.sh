#!/bin/bash

# pull ubuntu
docker pull ubuntu:12.04
docker pull ubuntu:14.04

# pull phusion
docker pull phusion/baseimage
docker pull phusion/passenger-full

# pull docker-enter
docker pull jpetazzo/nsenter

# pull ipython notebook
docker pull ipython/nbviewer
docker pull ipython/scipyserver
