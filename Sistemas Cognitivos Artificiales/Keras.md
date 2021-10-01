# Keras
Keras is an open source deep learning library that enables fast experimentation with neural networks. It runs on top of other frameworks like Tensorflow, Theano or CNTK. And it was created by French AI researcher François Chollet
- Keras is a high level Framework
- Deep Learning Framework
- Enables fast experimentation
- Runs on top of other frameworks, like Theano
- Writting by Frnacòis Chollet

## ¿ Why Keras ?
Why use Keras instead of other low-level libraries like TensorFlow? With Keras you can build industry-ready models in no time, with much less code than Theano, as we saw before, and a higher abstraction than that offered by TensorFlow. This allows for quickly and easily checking if a neural network will get your problems solved. In addition you can build any architecture you can imagine, from simple networks to more complex ones like auto-encoders, convolutional or recurrent neural networks. Keras models can also be deployed across a wide range of platforms like Android, iOS, web-apps, etc.s
- Fast industry-ready models
- For begineers and experts
- less code
- Build any architecture (from simples networks, codificadores automáticos, redes neuronales convolucionales o recurrentes)
- Deploy models in multiple platforms (Android, IOS, WebApps, etcss )

## Keras + TensorFlow
It's the best moment to be learning Keras. Keras is now fully integrated into TensorFlow 2.0, so you can use the best of both worlds as needed and in the same code pipeline. If as you dive into deep learning you find yourself needing to use low-level features, for instance to have a finer control of how your network applies gradients, you could use TensorFlow and tweak whatever you need. Now that you know better what Keras is and why to use it, perhaps we should discuss when and why to use neural networks in the first place.
- TensorFlow's High level framework of choice
- Keras is complementary to Tensorflow
- You can see TensorFlow for low level features (si necesito usar código a bajo nivel, como ajustes de los gradientes, podemos usar tenssorflow puro)

## Feature Engineering
Neural networks are good feature extractors, since they learn the best way to make sense of unstructured data. Previously, it was the domain expert that had to set rules based on experimentation and heuristics to extract the relevant features of data. Neural networks can learn the best features and their combination, they can perform feature engineering themselves. That's why they are so useful. But what is unstructured data?

[<img align="center" alt="Aws" width="500px" src="../Aprendizaje%20Automático/assets/Screenshot_6.png" />][blank]



<br/>


## Unstructured data
Unstructured data is data that is not easily put into a table. For instance, sound, Video, images, etc. It's also the type of data where performing feature engineering can be more challenging, that's why leaving this task to neural networks is a good idea.


[<img align="center" alt="Aws" width="500px" src="../Aprendizaje%20Automático/assets/Screenshot_7.png" />][blank]

<br/>

## So, when to use neural networks?
If you are dealing with unstructured data, you don't need to interpret the results and your problem can benefit from a known architecture, then you probably should use neural networks. For instance, when classifying images of cats and dogs: Images are unstructured data, we don't care as much about why the network knows it's a cat or a dog, and we can benefit from convolutional neural networks. So it's wise to use neural networks. You will learn about the usefulness of convolutional neural networks later on in the course.
- Dealing with unstructured data
- Don`t need easily interpretable results
- You can benefit from a know architecture
  example: Classify images of cats or dogs
- Image -> unstructured data
- You don`t care about why the network know it's a cat or dog   
- You can benefit from conovolutional neuronal networks

---

## A neural network?
A neural network is a machine learning algorithm with the training data being the input to the input layer and the predicted value the value at the output layer.

[<img align="center" alt="Aws" width="500px" src="../Aprendizaje%20Automático/assets/Screenshot_8.png" />][blank]

<br/>

## Parameters
Each connection from one neuron to another has an associated weight w. Each neuron, except the input layer which just holds the input value, also has an extra weight we call the bias weight, b. During feed-forward our input gets transformed by weight multiplications and additions at each layer, the output of each neuron can also get transformed by the application of what's called an activation function.

[<img align="center" alt="Aws" width="500px" src="../Aprendizaje%20Automático/assets/Screenshot_10.png" />][blank]

<br/>

## Gradient descent
Learning in neural networks **consists of tuning the weights or parameters to give the desired output**. One way of achieving this is by using the famous **gradient descent algorithm**, and applying weight updates incrementally via a process known as **back-propagation**. That was a lot of theory! The code in Keras is much simpler as we will see now.

[<img align="center" alt="Aws" width="500px" src="../Aprendizaje%20Automático/assets/Screenshot_11.png" />][blank]

<br/>

## The sequential API
Keras allows you to build models in two different ways:
- using either the **Functional API** or 
- the **Sequential API**.  


We will focus on the **Sequential API**. This is a simple, yet very powerful way of building neural networks that will get you covered for most use cases. With the sequential API you're essentially building a model as a stack of layers. You can start with an input layer.  
Add a couple of hidden layers.  
And finally end your model by adding an output layer. Let's go through a code example.

[<img align="center" alt="Aws" width="500px" src="../Aprendizaje%20Automático/assets/Screenshot_12.png" />][blank]

<br/>

## Defining a neural network
To create a simple neural network we'd do the following: 
- Import the Sequential model from Keras.models. 
- Import a Dense layer, also known as fully connected layer, from Keras.layers. 
- We can then create an instance of a Sequential model.
- In this next line of code we add two layers; a 2 neuron Dense fully connected layer, and an input layer consisting of 3 neurons. 
  - The input layer is defined with the input_shape parameter. 
  - This first layer matches the dimensions of our input data.
- We finally add another fully connected layer, this time with 1 neuron. 

We've built the network to the right.

```python
from keras.models import Sequential
from keras.layers import Dense
# Create a new sequential model
model = Sequential()
# Add and input a dense layer
model.add(Dense(2, input_shape=(3,)))
# Add a final 1 neuron layer
model.add(Dense(1))
```

[<img align="center" alt="Aws" width="300px" src="../Aprendizaje%20Automático/assets/Screenshot_13.png" />][blank]

<br/>


## Adding activations
In order to add an activation function to our layers we can make use of the activation argument.  

For instance, this is how we'd add a ReLU activation to our hidden layer. Don't worry about the choice of activation functions,that will be covered later on in the course.

```python
from keras.models import Sequential
from keras.layers import Dense
# Create a new sequential model
model = Sequential()
# Add and input a dense layer
model.add(Dense(2, input_shape=(3,), activation=(relu) ))
# Add a final 1 neuron layer
model.add(Dense(1))
```

[<img align="center" alt="Aws" width="300px" src="../Aprendizaje%20Automático/assets/Screenshot_14.png" />][blank]

<br/>

## Summarize your model!
Once we've created our model we can call the `summary()` method on it. 
```python
model.summary()
```
This displays a table with 3 columns: 
1. The first with the **layers name and type**, 
2. the second with the **shape of the outputs** produced by each layer and 
3. the third containing the number of parameters, those are the weights including the bias weight of each neuron in the layer. 

When the input layer is defined via the input_shape parameter, as we did before, it is not shown as a layer in the summary but it's included in the layer where it was defined, in this case the dense_3 layer.

## Visualize parameters
That's why we see that this layer has **8 parameters**: 
- **6 parameters** or weights come from the connections of the 3 input neurons to the 2 neurons in this layer, 
- the missing **2 parameters** come from the bias weights, **b0** and **b1**, 1 per each neuron in the hidden layer.  

These add up to 8 different parameters.

[<img align="center" alt="Aws" width="500px" src="../Aprendizaje%20Automático/assets/Screenshot_15.png" />][blank]


[<img align="center" alt="Aws" width="500px" src="../Aprendizaje%20Automático/assets/Screenshot_16.png" />][blank]

<br/>

----
## Practice 1
You're going to build a simple neural network to get a feeling of how quickly it is to accomplish this in Keras.

You will build a network that **takes two numbers as an input**, passes them through a **hidden layer of 10 neurons**, and finally **outputs a single non-constrained number**.

A **non-constrained output can be obtained by avoiding setting an activation function in the output layer**. This is useful for problems like regression, when we want our output to be able to take any non-constrained value.

[<img align="center" alt="Aws" width="300px" src="../Aprendizaje%20Automático/assets/Screenshot_17.png" />][blank]

<br/>

```python
# Import the Sequential model and Dense layer
from keras.models import Sequential
from keras.layers import Dense

# Create a Sequential model
model = Sequential()

# Add an input layer and a hidden layer with 10 neurons
model.add(Dense(10, input_shape=(2,), activation="relu"))

# Add a 1-neuron output layer
model.add(Dense(1))

# Summarise your model
model.summary()
```
output :
```
Model: "sequential_1"
_________________________________________________________________
Layer (type)                 Output Shape              Param #   
=================================================================
dense_1 (Dense)              (None, 10)                30        
_________________________________________________________________
dense_2 (Dense)              (None, 1)                 11        
=================================================================
Total params: 41
Trainable params: 41
Non-trainable params: 0
_________________________________________________________________
```

## Practice 2 : Counting parameters
You've just created a neural network. But you're going to create a new one now, taking some time to think about the weights of each layer. The Keras `Dense` layer and the `Sequential` model are already loaded for you to use.

This is the network you will be creating:

[<img align="center" alt="Aws" width="300px" src="../Aprendizaje%20Automático/assets/Screenshot_18.png" />][blank]

<br/>

```python
# Instantiate a new Sequential model
model = Sequential()

# Add a Dense layer with five neurons and three inputs
model.add(Dense(5, input_shape=(3,), activation="relu"))

# Add a final Dense layer with one neuron and no activation
model.add(Dense(1))

# Summarize your model
model.summary()
```
output:  
> There are 20 parameters, 15 from the connections of our inputs to our hidden layer and 5 from the bias weight of each neuron in the hidden layer.
```
Model: "sequential_1"
_________________________________________________________________
Layer (type)                 Output Shape              Param #   
=================================================================
dense_1 (Dense)              (None, 5)                 20        
_________________________________________________________________
dense_2 (Dense)              (None, 1)                 6         
=================================================================
Total params: 26
Trainable params: 26
Non-trainable params: 0
_________________________________________________________________
```
## Practice 3 : Build as shown!
You will take on a final challenge before moving on to the next lesson. Build the network shown in the picture below. Prove your mastered Keras basics in no time!

[<img align="center" alt="Aws" width="300px" src="../Aprendizaje%20Automático/assets/Screenshot_19.png" />][blank]

<br/>

```python
from keras.models import Sequential
from keras.layers import Dense

# Instantiate a Sequential model
model = Sequential()

# Build the input and hidden layer
model.add(Dense(3, input_shape=(2,), activation="relu"))

# Add the ouput layer
model.add(Dense(1))
```











```python

```

[blank]: https://