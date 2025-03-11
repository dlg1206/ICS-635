FROM python:3.12.1-slim
EXPOSE 8888
ENV PATH="/home/jupyter/.local/bin:${PATH}"

RUN useradd -m jupyter
WORKDIR /home/jupyter
COPY requirements.txt requirements.txt

USER jupyter
RUN python3 -m pip install --upgrade pip
RUN pip install notebook==7.3.2
RUN pip install -r requirements.txt

ENTRYPOINT ["jupyter", "notebook", "--notebook-dir=assignments", "--ip=0.0.0.0", "--ServerApp.token=''", "--ServerApp.password=''", "--ServerApp.password_required=False"]