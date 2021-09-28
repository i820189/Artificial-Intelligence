- Aprendizaje Automático
  - Aprendizaje No Supervisado
  - Aprendizaje Supervisado


-------


#  ¿Cómo estudiar este tema?

En este tema se desarrollan los conceptos de las técnicas de detección de anomalías. Estas técnicas también se conocen en la literatura con el nombre de **detección de outliers**. En esencia un outlier es un valor poco habitual y, por tanto, puede ser considerado una anomalía.

- En primer lugar, se introducen los métodos de detección de anomalías y su **principal aplicación**.
- A continuación, se describe cómo se pueden utilizar los métodos de aprendizaje supervisado para utilizarse en el ámbito de la detección de anomalías.
- Posteriormente, se cubren las pautas necesarias para desarrollar y evaluar un sistema de detección de anomalías.
- Finalmente, se describen las **diferencias** existentes entre el **aprendizaje supervisado** y los **métodos de detección de anomalías**.

# Técnicas de detección de anomalías

Los problemas de detección de anomalías son una aplicación común del aprendizaje automático. Se pueden ver como una posible solución a un problema de **aprendizaje no supervisado**, pero tienen también aspectos de **aprendizaje supervisado**.

Pero, **¿qué es la detección de anomalías?** Imagine que trabaja en una empresa que fabrica motores de aviones. A medida que los motores salen de la cadena de montaje, se realiza una fase de aseguramiento de la calidad en la cual se miden algunas características de los motores (ejemplo: calor generado y vibración). Supongamos que tenemos un conjunto de datos con **"m" motores** que han sido evaluados positivamente y han dado como resultado lo dibujado en la siguiente gráfica.

![detección de anomalias](assets/Screenshot_9.png)
*Gráfica 1. Distribución de valores de vibración y calor generado por motores. Fuente: https://es.coursera.org/learn/machine-learning*

A partir de ahora, al día siguiente se fabrica un nuevo motor y se utiliza un método de detección de anomalías para comprobar su correcto funcionamiento, comparando el de este motor nuevo con respecto a los motores previos. Si obtenemos una gráfica como esta:

![](assets/img2.png)
*Gráfica 2. Distribución de valores de vibración y calor generado por motores. Ejemplo de una instancia correcta. Fuente: https://es.coursera.org/learn/machine-learning*

Lo más probable es que el motor funcione correctamente pues su comportamiento es muy similar al de motores previos. Sin embargo, si la gráfica fuera:


![](assets/img3.png)
*Gráfica 3. Distribución de valores de vibración y calor generado por motores. Ejemplo de una instancia anómala Fuente: https://es.coursera.org/learn/machine-learning*

> Lo más probable es que el motor presente algún tipo de anomalía.

En este tipo de problemas partimos de un conjunto de datos que contiene registros normales, o bien la gran mayoría de ellos lo son. El objetivo es utilizar este conjunto como referencia y observar si existen nuevos ejemplos que son anómalos.

**¿Cómo se realiza esta comprobación?** En primer lugar, se utiliza el conjunto de entrenamiento para entrenar un modelo.

Este modelo responde a la pregunta: **¿cuál es la probabilidad de que el ejemplo x sea normal?**

Una vez que se ha construido el modelo:

- Si ![formula](https://render.githubusercontent.com/render/math?math=p(X_%7Btest%7D)%20%3C%20\epsilon) se trata de una anomalía.
- Si ![formula](https://render.githubusercontent.com/render/math?math=p(X_%7Btest%7D)%20\geq%20\epsilon)  se trata de un ejemplo normal.

Donde **ε** es un umbral de probabilidad definido en función de que nivel de certeza queramos tener. En el caso de un modelo en dos dimensiones, lo que estamos definiendo se puede representar gráficamente de la siguiente forma:

![](assets/img4.png)
*Gráfica 4. Distribución de valores de vibración y calor generado por motores. Fuente: https://es.coursera.org/learn/machine-learning*

Donde a medida que nos alejamos del centro, la probabilidad de que aparezcan ejemplos similares disminuye.

## Aplicaciones

Las aplicaciones de los problemas de detección de anomalías son muy variadas. A continuación, se presentan dos ejemplos:

**Detección de fraude:** se puede modelar a los usuarios en función de ciertos valores de su actividad como: 
  - localización del login, 
  - duración de tiempo online, 
  - frecuencia de gasto, etc. 

[^1]: This is the footnote.

Utilizando este conjunto de datos se puede construir un modelo para generar el patrón de actividad habitual de los usuarios. Con este modelo se puede obtener la probabilidad de comportamiento «normal» para cada usuario y por tanto identificar usuarios anormales. Esto puede desencadenar acciones como bloquear el tráfico a determinados usuarios o automáticamente bloquear transacciones.
- **Monitorización data-center:** si tenemos un data center con muchos ordenadores, se puede construir un conjunto de datos con información sobre cada ordenador (uso de memoria, accesos al disco, carga de CPU, etc.). En el caso de que se observe un comportamiento anómalo de un ordenador posiblemente sea porque vaya a fallar.
La detección de anomalías combina las técnicas de aprendizaje supervisado para generar un modelo de valores normales y, posteriormente, se utiliza este modelo con nuevos registros para detectar valores anómalos o inus uales.

Here's a simple footnote,[^1] and here's a longer one.[^bignote]

[^1]: This is the first footnote.

[^bignote]: Here's one with multiple paragraphs and code.
    Indent paragraphs to include them in the footnote.
    `{ my code }`
    Add as many paragraphs as you like.
