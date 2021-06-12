FROM continuumio/miniconda3

RUN pip install numpy scipy Flask pandas scikit_learn flask-cors

COPY app /app

WORKDIR /app

EXPOSE 5000

CMD python3 main.py
