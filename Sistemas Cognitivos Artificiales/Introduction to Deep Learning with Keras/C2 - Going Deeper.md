By the end of this chapter, you will know how to solve binary, multi-class, and multi-label problems with neural networks. All of this by solving problems like detecting fake dollar bills, deciding who threw which dart at a board, and building an intelligent system to water your farm. You will also be able to plot model training metrics and to stop training and save your models when they no longer improve.

- [Binary classification](#binary-classification)
  - [When to use binary classification?](#when-to-use-binary-classification)
    - [Our dataset](#our-dataset)
  - [Pairplots](#pairplots)
  - [The NN architecture](#the-nn-architecture)
  - [The sigmoid function](#the-sigmoid-function)
  - [Let's build it](#lets-build-it)
  - [Compiling, training, predicting](#compiling-training-predicting)
  - [Let's practice!](#lets-practice)

----

# Binary classification
You're now ready to learn about binary classification, so let's dive in.

## When to use binary classification?
You will use binary classification when you want to solve problems where **you predict whether an observation belongs to one of two possible classes**. A simple binary classification problem could be learning the boundaries to separate blue from red circles as shown in the image.

[<img align="center" alt="Aws" width="300px" src="../../Aprendizaje%20Automático/assets/Screenshot_28.png" />][blank]

<br/>

### Our dataset
The dataset for this problem is very simple. The coordinates are pairs of values corresponding to the **X** and **Y** coordinates of each circle in the graph. The labels are **1 for red circles** and **0 for the blue circles**.

[<img align="center" alt="Aws" width="500px" src="../../Aprendizaje%20Automático/assets/Screenshot_29.png" />][blank]

<br/>

## Pairplots
We can make use of seaborn's pairplot function to explore a small dataset and **identify whether our classification problem will be easily separable**. We can get an intuition for this if **we see that the classes separate well-enough along several variables**.  
In this case, for the circles dataset, there is a very clear boundary: **the red circles concentrate at the center while the blue are outside**. 

It should be easy for our network to find a way to separate them just based on **x** and **y** coordinates.

```python
import seaborn as sns

# Plot a pariplot
sns.pariplot(circles, hue="target")
```
[<img align="center" alt="Aws" width="400px" src="../../Aprendizaje%20Automático/assets/Screenshot_30.png" />][blank]

<br/>

## The NN architecture
This is the neural network we will build to classify red and blue dots in our graph.

We have two neurons as an input layer, one for the x coordinate and another for the y coordinate of each of the red and blue circles in the graph.

Then we have one hidden layer with four neurons. Four is a good enough number to learn the separation of classes in this dataset. This was found by experimentation.

We finally end up with a single output neuron which makes use of the **sigmoid activation function**. It's important to note that, regardless of the activation functions used for the previous layers, we need the sigmoid activation function for this last output node.

[<img align="center" alt="Aws" width="300px" src="../../Aprendizaje%20Automático/assets/Screenshot_31.png" />][blank]

<br/>

## The sigmoid function
The sigmoid activation function squashes the neuron output of the second to last layer to a floating **point number between 0 and 1.**

[<img align="center" alt="Aws" width="300px" src="../../Aprendizaje%20Automático/assets/Screenshot_32.png" />][blank]

You can consider the output of the sigmoid function as the **probability of a pair of coordinates being in one class or another**. So we can set a **threshold** and say everything below 0.5 will be a blue circle and everything above a red one.

[<img align="center" alt="Aws" width="450px" src="../../Aprendizaje%20Automático/assets/Screenshot_33.png" />][blank]

<br/>

## Let's build it
So let's build our model in keras: We start by importing the **sequential** model and the **dense** layer. We then instantiate a sequential model.

We add a **hidden layer of 4 neurons** and we define an input shape, which consists of **2 neurons**. We use the **tanh** as the activation function, for this hidden layer. Activation functions are covered later in the course, so don't worry about this choice for now.

We finally add an output layer which contains **a single neuron**, we make use of the **sigmoid** activation function so that we achieve the behavior we expect from this network, that is obtaining a value **between 0 and 1**. Our model is now ready to be trained.

```python
from keras.models import Sequential
from keras.layers import Dense

# Instantiate a sequenatial model
model = Sequential()

# Add input and hidden layers
model.add(Dense(4, input_shape=(2,), activation="tanh"))

# Add output layer, use sigmoid
model.add(Dense(1, activation="sigmoid"))
```

[<img align="center" alt="Aws" width="300px" src="../../Aprendizaje%20Automático/assets/Screenshot_34.png" />][blank]

<br/>

## Compiling, training, predicting
Just as before, we need to compile our model before training. We will use stochastic gradient descent as an optimizer and binary cross-entropy as our loss function. Binary cross-entropy is the function we use when our output neuron is using sigmoid as its activation function. We train our model for 20 epochs passing our coordinates and labels as parameters. We obtain the predicted labels by calling predict on coordinates.

```python
# Compile the model
model.compile(optimizer="sgd", loss="binary_crossentropy")

#Train Model
model.train(coordinates, labels, epochs=20)

# Predict with trained model
preds = mdoel.predict(coordinates)
```

**Results**

These are boundaries that were learned to classify our circles. Looks like our model did pretty well!

[<img align="center" alt="Aws" width="300px" src="../../Aprendizaje%20Automático/assets/Screenshot_35.png" />][blank]

<br/>

## Let's practice!
It's time to have some fun with this new architecture you've learned.



------

[blank]: https://