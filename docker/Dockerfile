FROM jupyter/datascience-notebook:latest

ENV JUPYTER_ENABLE_LAB=yes

RUN conda install -c conda-forge rise

# Actualizar sklearn
RUN python3 -m pip install scikit-learn --user --upgrade pip

CMD ["jupyter", "notebook", "--NotebookApp.token=''", "--NotebookApp.password=''"]
