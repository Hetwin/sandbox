# Sandbox

## Motivation
"Code in the wild" for data science application are the perfect starting point to learn something new. Unfortunately, it is very painful to get the code running especially if you are not familiar with the detailed information about the environment setup.

This issue can be solved by using a development environment running in a Docker container, which is created by a predefined Docker image like [Juypter Stack](https://jupyter-docker-stacks.readthedocs.io/en/latest/). The developer can provide the code and the related development environment. Then you only need to run the code and reproduce the result in an easy way. No time wasting effort anymore!

## Get Docker for Windows
Before you can start, you need to install [Docker for Windows](https://docs.docker.com/desktop/install/windows-install/). If you are not familiar with the installation of Docker for Windows you can use an installation guide provided on [Youtube](https://www.youtube.com/). 
If you have successfully installed Docker for Windows you can open the PowerShell and insert in the command line

```bash
docker version
```  

If everything works fine, you get detailed information about your Docker version. That’s it! Now you can use the Docker engine.

## Create a Docker container
Again open Windows PowerShell on your windows computer and insert the command line
```bash
whoami
```
With this command, you get your current username. Insert the username on the placeholder position **USER** in the following command line and run the code.

```bash
docker run -d -p 8888:8888 -v c:/Users/USER/Desktop/work:/home/jovyan/work --name ds -e JUPYTER_TOKEN='easy' jupyter/tensorflow-notebook:2023-06-01
```

Explain the docker commands step by step....