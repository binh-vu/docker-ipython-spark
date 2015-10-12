# Introduction

# Use case

1. Use spark inside ipython notebook
2. Write parallel code to handle big data easily in spark. So much paintful when you run that in python using multiple process or thread.
3. Connect the other machines in your laboratory as workers and form a powerful computing just in one seconds

# How to use

1. Run build.sh to build docker images (it will install many python scientific packages such as openblas, numpy, scipy, skicit-learn, pandas...)
2. Start spark master & slaves & ipython by: spark/start-master.sh & spark/start-slave.sh & ipython-spark/start-ispark.sh. Or using docker-compose

# TODO:

* Improving documents