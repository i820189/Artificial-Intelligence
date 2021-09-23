# Etiquetado morfosintáctico (POS tagging)

### Contenido
- Categorías morfosintácticas o gramaticales
- Funcionamiento y características del etiquetado morfosintáctico
- Etiquetado morfosintáctico basado en modelos ocultos de Markov (HMM)
- Etiquetado morfosintáctico basado en aprendizaje automático

---------

![Menu](./assets/T3Screenshot_1.png)

Hablaremos del etiquetado morfosintáctico y cómo calcularlo, haciendo especial hincapié en los modelos  ocultos de Markov (Hidden Markov Models)

## Categorías morfosintácticas o gramaticales
Morfosintaxis : . Parte de la gramática que integra la **morfología** y la **sintaxis**

Las categorías morfosintácticas del lenguaje, que en español también se llaman categorías gramaticales, proporcionan una clasificación de las diferentes partes de la oración, es decir, una clasificación de las palabras según su tipo.

Las categorías gramaticales del español, según la clasificación clásica (RAE), son 9:


| Categorías  morfosintácticas| Detalle |
|---------------------|----------------------------------------------|
|**Sustantivo o nombre**| Clase de palabras cuyos elementos poseen género y número, forman sintagmas nominales con diversas funciones sintácticas y designan entidades de diferente naturaleza.|
|  **Determinante**     |  Clase de palabras cuyos elementos determinan al sustantivo o al grupo nominal y se sitúan generalmente en posición prenominal. El artículo definido y los demostrativos son determinantes. |
|  **Adjetivo**          |  Clase de palabras cuyos elementos modifican a un sustantivo o se predican de él y denotan cualidades, propiedades y relaciones de diversa naturaleza. Ejemplos: inteligente, amplio, numérico, mismo, telefónico… |
|  **Pronombre**  | Clase de palabras cuyos elementos hacen las veces del sustantivo o del sintagma nominal y que se emplean para referirse a las personas, los animales o las cosas sin nombrarlos. P. ej.: ella, esto, quién… |
|  **Verbo**   | Clase de palabras cuyos elementos pueden tener variación de persona, número, tiempo, modo y aspecto. |
| **Adverbio** |  Clase de palabras cuyos elementos son invariables y tónicos, están dotados generalmente de significado léxico y modifican el significado de varias categorías, principalmente de un verbo, de un adjetivo, de una oración o de una palabra de la misma clase. |
| **Preposición** | Clase de palabras invariables cuyos elementos se caracterizan por introducir un término, generalmente nominal u oracional, con el que forman grupo sintáctico |
| **Conjunción**| Clase de palabras invariables, generalmente átonas, cuyos elementos manifiestan relaciones de coordinación o subordinación entre palabras, grupos sintácticos u oraciones. |
|**Interjección** | Clase de palabras invariables, con cuyos elementos se forman enunciados exclamativos, que manifiestan impresiones, verbalizan sentimientos o realizan actos de habla apelativos. |


## Funcionamiento y características del etiquetado morfosintáctico
