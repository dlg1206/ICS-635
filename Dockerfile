FROM python:3.12.1-slim
EXPOSE 8888
ENV PATH="/home/jupyter/.local/bin:${PATH}"

RUN useradd -m jupyter
WORKDIR /home/jupyter
COPY requirements.txt requirements.txt

USER jupyter
RUN python3 -m pip install --upgrade pip
RUN pip install notebook && pip install -r requirements.txt
COPY --chown=jupyter:jupyter assignments assignments/

ENTRYPOINT ["jupyter", "notebook", "assignments", "--ip=0.0.0.0", "--NotebookApp.token=''"]