FROM python:3.11-slim
LABEL maintainer="Varish Kongara, Avinask Kakarala"
LABEL version="1.0"
LABEL description="Python Jupyter Notebook"

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential

RUN pip install --upgrade pip
RUN pip install notebook==7.5.0 \
    pandas==1.5.1 \
    seaborn==0.13.1 \
    numpy==1.23.2 \
    matplotlib==3.6.3 \
    matplotlib-inline==0.1.6

WORKDIR /workspace

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
