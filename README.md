# Análisis de Datos 2021
Repositorio de materia Análisis de Datos de la Carrera de Especialización en Inteligencia Artificial de FIUBA.

## Clases

### Clase 1. Introducción al análisis de datos y herramientas

Docente: Lic. Nicolás Eduardo Horro

- Temario:
  - Introducción al análisis de datos ([presentación](https://docs.google.com/presentation/d/1ueVJFZhFfCrCpmn_oiEaQN_4udnTxf4mIYgEb866zWU/edit?usp=sharing)).
  - Taller de nivelación de herramientas de SW (hands-on).
    - GIT. Modelo de datos. Comandos útiles (presentación/jamboard).
    - Conda. Manejo de ambientes virtuales. Gestión de paquetes (sesión interactiva).
    - Python con conceptos de Ingeniería de SW (sesión interactiva).
    - Numpy (sesión interactiva, opcional).
    - Pandas (sesión interactiva).
  - Resolución de TP1 en clase  (sesión interactiva).

- Ejercicios
  - [Trabajo Práctico 1. Introducción al Análisis de Datos](clase1/ejercicios/tp01.ipynb)
  - [Link de descarga de datos](https://drive.google.com/file/d/1eEZCnCuGKU2LFKrWaC0Tr8LwgxrZLqCk/view?usp=sharing)

### Clase 2. Conceptos básicos de análisis de datos.

Docente: Dr. Ing. Pablo Briff.

[Presentación](clase2/Apuntes.pdf)

Temario:

- Variables aleatorias.
  - Función de distribución de probabilidad.
  - Función de distribución conjunta y marginal.
  - Distribuciones condicionales.
  - Esperanza.
  - Varianza.
  - Funciones generadoras de momentos.
  - Estadísticas de orden k.
  - Teorema central del límite.
- Variables aleatorias especiales.
  - Distribución de Bernoulli y Binomial.
  - Distribución uniforme.
  - Distribución Chi-cuadrado.
  - Distribución t de Student.
- Introducción al análisis de datos.
  - Media y varianza muestral.
  - Medidas de tendencia central.
  - Medidas de variabilidad.
  - Regla empírica.
  - Estimación de desvío estándar con rango.
  - Diagramas de Box and Whiskers.

[Ejercicios](clase2/Ejercicios)

### Clase 3.  Conceptos de estadística y teoría de la información

Docente: Dr. Ing. Pablo Briff.

[Presentación](clase3/Apuntes.pdf)

Temario:

- Repaso de estimación de intervalo.
- Repaso de tests estadísticos.
  - Repaso de test de hipótesis.
  - Tipos de errores.
  - Ensayo unilateral.
  - Test de hipótesis con varianza desconocida.
  - Valor p (p-value) y puntaje z (z-score).
- Test estadísticos.
  - Test de independencia de Pearson.
  - Test de t de Student de 2 muestras.
  - Análisis de varianza (ANOVA) unidireccional.
- Entropía.
  - Definición.
  - Entropía como información promedio.
  - Propiedades.
  - Entropía conjunta y condicional.
- Divergencia de KL e información Mutua.
  - Entropía cruzada.
  - Información mutua.

[Ejercicios](clase3/Ejercicios)

### Clase 4. Taller de preparación de datos

Docente: Lic. Nicolás Eduardo Horro.

- Temario:
  - Introducción al análisis de datos ([presentación - parte 1](./clase4/Apuntes/Clase 4. Preparación de datos - Parte1.pdf)).
  - Taller de preparación de datos.
    - Introducción a la preparación de datos.
    - Caracterización de las variables.
    - Técnicas de imputación univariada y multivariada. 
    - Codificación de variables categóricas.
    - Transformación de variables.
    - Discretización.
    - Tratamiento de valores extremos (outliers).
    - Escalado de variables de entrada (feature scaling).
    - Integración de las técnicas anteriores en cadenas de procesamiento con SKLearn.
  - Presentación de trabajo integrador.

### Clase 5. Selección de features

Docente: Dra. Magdalena Bouza

Temario:

- Métodos de selección de features. [Presentación]("./clase5/Apuntes/05 - Selección de features.pdf").
  - Métodos de filtrado
    - Coeficiente de correlación de Pearson.
    - Coeficiente de Spearman
    - Información mutua
    - ANOVA
    - Coeficiente de correlación de Kendall
    - Kruskall-Wallis / Información mutua
    - Test de $\Chi^2$
  - Métodos embebidos
  - Métodos wrapper
  - Embedded
- [Ejemplos](clase_5/Ejemplos)

### Clase 6. Reducción de dimensiones

Docente: Dra. Magdalena Bouza

Temario:

- Métodos de reducción de dimensiones. [Presentación]("./clase6/Apuntes/06 - Reducción de dimensiones.pdf").
  - Análisis de componentes principales (PCA)
  - Descomposición de valores singulares (SVD)
- [Ejemplos](clase_6/Ejemplos)

### Clase 7. Taller de ingeniería de features y despliegue de modelos. 

Docentes: Dra. Magdalena Bouza, Lic. Nicolás Eduardo Horro.

Temario:

- Introducción a la ingeniería de variables.
- Caso de estudio:
  - Ingeniería de features de tiempo y frecuencia.
  - Desarrollo del modelo completo y exportación.
- Desarrollo y despliegue de modelos.
  - Conceptos de SW para armado de cadenas de procesamiento complejas.
  - Ejemplo de despliegue con microservicios: aplicación de detección de fraude.

### Clase 8. Evaluación / exposición de trabajos

- Links a trabajos en [grupo de slack](https://ceaiworkspace.slack.com/archives/C01VCBS9FV3)

## Recursos de interés

Librerías (aportes de alumn@s recomendados y/o utilizados en TP integrador) que complementan temas vistos en clase:

- [dtale](https://pypi.org/project/dtale/): librería para análisis exploratorio inicial. 
- [boruta-py](https://github.com/scikit-learn-contrib/boruta_py): implementación scikit-learn de algoritmo Boruta selección de features. 
- [Imbalanced learn](https://pypi.org/project/imbalanced-learn/): librería para tratamiento de datos desbalanceados: incluye SMOTE, etc. 
- [Feature engine](https://feature-engine.readthedocs.io/): librería que implementa la mayoría de los métodos de ingeniería de features vistos en la clase 4.
- [Geopy](https://geopy.readthedocs.io/en/stable/): librería para trabajar con datos geográfico en pythos. 