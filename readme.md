# ICS 635: Machine Learning

> Derek Garcia

## Quickstart (Recommended)

1. Build jupyter container

```bash
docker build -t jupyter-ics635 .
```

2. Launch container

```bash
docker run --rm -it -p 8888:8888 jupyter-ics635
```

Assignments can now be found below:

- [Assignment 1](http://localhost:8888/notebooks/assignment1.ipynb)

## Local Deployment

1. Create virtual environment

```bash
# windows
python -m venv venv
# linux
python3 -m venv venv
```

2. Activate virtual environment

```bash
# windows
. venv\Scripts\activate
# linux
. venv/bin/activate
```

3. Install jupyter and dependencies

```bash
pip install notebook && pip install -r requirements.txt
```

3. Launch jupyter server

```bash
jupyter notebook assignments
```

This will launch the server and assignments will be listed