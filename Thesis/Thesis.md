<p align="center">
THESIS PROPOSAL

<p align="center">
By<br>
Andrea L. Murphy
<p align="center">
Bachelor of Science, Marketing, Virginia Commonwealth University 2014

<p align="center">
Submitted to the University of New Hampshire in Partial Fulfillment of the Requirements for the Degree of
Master of Science
in
Information Technology
<p align="center">
September, 2019

## TABLE OF CONTENTS

| **CHAPTERS** |
| ---
| ABSTRACT |
| INTRODUCTION |
| SCOPE |
| BACKGROUND |
| LITERATURE REVIEW |
| METHODS |
| EXPECTED RESULTS |
| WORK PLAN AND TIMELINE|
| REQUIRED RESOURCES |
| REFERENCES |


## ABSTRACT
<p align="center">
AMERICAN SIGN LANGUAGE RECOGNITION APPLICATION USING COMPUTER VISION, MACHINE AND DEEP LEARNING ALGORITHMS
</p>
<p align="center">
By<br>
Andrea L. Murphy<br>
University of New Hampshire

A program that can perform image recognition has to be able to process a given image and describe its contents. An example of this could be as simple as recognizing if the given image is a cat or not a cat to something more complicated such as taking an image of an American Sign Language (ASL) hand gesture and classify it with its corresponding alphabet, which is a part of my current problem. The problem being how to create an application that takes ASL alphabet signs and can detect the had itself and the recognize what letter it is, in real time.

To solve this problem, one is not able to specify which features would differentiate between ASL signs due to many reasons. For example, each person can have slight modifications in their hand gestures. So, I will use computer vision and machine learning techniques as a way to enable a program to find patterns and infer results from the given data.

To implement this, I will use MATLAB\_R2019a and their new Computer Vision System Toolbox that offers a variety of built-in tools to help create image classification and object recognition systems. This includes the ability to process and build models using training datasets, validate these models using test datasets, perform advanced feature extraction, and predict and categorize input images correctly.

American Sign Language (ASL) substantially facilitates communication in the deaf community. So, aiding in the ability of communication with the help of a simple portable application makes this study extremely significant. Currently, there are no applications on the market that recognize ASL in real-time, increasing the need for this research and development.

## INTRODUCTION

American Sign Language (ASL) fundamentally facilitates communication in the deaf community. Over 5% of the world&#39;s population – or 466 million people – has disabling hearing loss. It is estimated that by 2050 over 900 million people – or one in every ten people – will have disabling hearing loss. [1]

We currently have many translation applications on the market for different spoken languages but none for ASL. This Thesis could potentially create a translator application that could be used for live ASL translation. Which would immensely aid in a new type of dynamic communication for the deaf community.

This proposal is organized into different sections, which includes the scope of the thesis, background required for the thesis, literature review, methods that will be used to complete the study including assumptions made and limitations, expected results, work plan/timeline, required resources and references.

## SCOPE

Through this thesis I want to create an application that is able to recognize the ASL hand signs for the alphabet A-Z with high accuracy. For this I will work on creating the required dataset, building a CNN neural network, training this network and creating models while working on techniques that can improve accuracy without losing speed. This will involve me building multiple datasets, neural networks and models while training over and over till I achieve the desired result which would be a CNN and a model which would perform quick and accurate predictions.

For this, I will firstconstruct the application in MATLAB until I achieve the desired result. Then I will convert the project into python application with pyTorch. This will involve fine tuning and creating a UI, completing the application.

## BACKGROUND

Computer vision is an interdisciplinary scientific field that deals with how computers can be made to gain high-level understanding from digital images or videos; it seeks to automate tasks that the human visual system can do. Machine Learning is a method of analyzing data by giving computers the capability to learn without being programed. Deep learning is a subset of Machine Learning that that imitates the workings of the human brain in processing data and creating patterns that can be used in decision making.

Bag-Of-Features in MATLAB, otherwise known as Bag of Visual Words (BOVW) is adapted from information retrieval and Natural Language Processing (NLP) bag of words (BOW). In BOW, the occurrences of each word are counted and used to create a frequency histogram of the keywords. Similarly, in Bag-Of-Features or Bag of Visual Words, the image features (unique patterns that can be found in an image) are used as &quot;words&quot; to create the frequency histogram using the key features.

## LITERATURE REVIEW

Currently there are no ASL recognition applications on the market. This includes all platforms; mobile, web, and desktop applications.

 However, ASL recognition is not necessarily an unexplored research topic. There are a few research papers and GitHub projects based on the ASL recognition. Nothing to date using MATLAB and none of these have the speed or accuracy that I hope to achieve through this Thesis.

## METHODS

In computer science, garbage in, garbage out describes the concept that flawed, or nonsense input data produces nonsense output or &quot;garbage&quot;. [2] The quality of the data set used plays a significant part on the accuracy of your model. Hence, I spent time on finding the perfect image dataset to use. I considered the size of the datasets and the quality of the images themselves to make this selection.

The data set I ended up using was found on Kaggle.com. The training dataset contains 87,000 images which are 200x200 pixels. There are 29 classes, of which 26 are for the letters A-Z and 3 classes for SPACE, DELETE and NOTHING. These 3 classes are very helpful in real time applications, and classification. The test dataset contains a mere 29 images, to encourage the use of real-world test images. [3]

The dataset was then uploaded into a MATLAB\_R2019 project and used to create an ALS alphabet database or gallery of images. Then by using the Image Set method constructed arrays of the images in the database to be used for feature extraction using the Bag-Of-Features method. The Bag-Of-Features method extracts SURF features (Speeded Up Robust Features) from the image files, constructs a visual library by reducing the number of features through division of feature space using K-means clustering. These features are then used to train a classifier model to recognize ASL signs of the 2D input images of hands.

I constructed a multiclass Support Vector Machines (SVM), I create an image category classifier. The classifier contains the number of categories and the category labels for the input images. Then I trained a support vector machine (SVM) multiclass classifier using the input bag, a Bag-Of-Features object.

The image data which is ASL hand gesture images labeled by their corresponding alphabet is taken and divided into training and test databases. The training database is used to create the Bag-Of-Features object, which is later used with SVM to train the classifier. This classifier is finally used to classify the ASL hand gesture images to their corresponding alphabets.

## EXPECTED RESULTS

 So far, I have used multi-class SVM with Bag-Of-Features to build my classifier using MATLAB. I created 4 different datasets from the original dataset in order to try and run the code locally. These are the results:

**Dataset I:**

- 10 classes A-J
- Each class containing 10 images; 100 images total

**Bag-Of-Features:**

\* Extracting features from 2 images in image set 1-10...done. Extracted 5000 features.

\* Keeping 80 percent of the strongest features from each category.

\* Using K-Means clustering to create a 500 word visual vocabulary.

\* Number of features          : 40000

\* Number of clusters (K)      : 500

\* Initializing cluster centers...100.00%.

\* Clustering...completed 31/100 iterations (~0.20 seconds/iteration)...converged in 31 iterations.

\* Finished creating Bag-Of-Features

**Results:**

100% accuracy scores for both models and detected all input images as the letter &quot;H&quot;.

**Dataset II:**

- 8 classes A-H
- Each class containing 1000 images

**Bag-Of-Features:**

\* Extracting features from 600 images in image set 1-8...done. Extracted 1500000 features.

\* Keeping 80 percent of the strongest features from each category.

\* Using K-Means clustering to create a 500 word visual vocabulary.

\* Number of features          : 9600000

\* Number of clusters (K)      : 500

\* Initializing cluster centers...100.00%.

\* Clustering...completed 65/100 iterations (~68.99 seconds/iteration)...converged in 65 iterations.

\* Finished creating Bag-Of-Features

**Results:**

This dataset had 97% accuracy scores for both models but detected all images as the letter &quot;H&quot;.

**Dataset III:**

- 3 classes A-C
- Each class containing 1000 images

**Bag-Of-Features:**

\* Extracting features from 600 images in image set 1-3...done. Extracted 1500000 features.

\* Keeping 80 percent of the strongest features from each category.

\* Using K-Means clustering to create a 500 word visual vocabulary.

\* Number of features          : 3600000

\* Number of clusters (K)      : 500

\* Initializing cluster centers...100.00%.

\* Clustering...completed 31/100 iterations (~18.63 seconds/iteration)...converged in 31 iterations.

\* Finished creating Bag-Of-Features

**Results:**

This dataset had 97% accuracy scores for both training and testing models. By constructing the image set Class I was able to detect the image with the correct letter.

**Dataset IV:**

- 10 classes A-Z
- Each class containing 3000 images; 78,000 images total

**Bag-Of-Features:**

\* Extracting features from 900 images in image set 26...done. Extracted 2250000 features.

\* Keeping 80 percent of the strongest features from each category.

Error using zeros
Requested 46800000x64 (11.2GB) array exceeds maximum array size preference. Creation of arrays greater than this limit may take a long time
and cause MATLAB to become unresponsive. See array size limit or preference panel for more information.

**Results:**

Are inconclusive due to hardware limitations. Further explained in the Required Resources section.

As of now, I am hoping to use other Deep Learning algorithms such as CNN to achieve a high accuracy prediction by using models trained with the whole data set and all 26 classes. Also, converting the project into a python application to fine-tune the results.


## WORK PLAN/TIMELINE

**Thesis Timeline for Program Completion by May 2020**

| **Term** | **Millstones** |
| --- | --- |
| **Summer 2019** | Brainstorm    Narrow down topics ideas    Develop and select a research idea    Look at previous theses onlineFinalize Thesis topic |
| **Summer 2019** | Review UNH Thesis Guidelines |
| **Summer 2019** | Form Thesis committee by the end of summer semester, including choosing thesis advisor    Finalize Thesis committee |
| **Summer 2019** | Finish MATLAB ASL application |
| **Summer 2019** | Write a Thesis Proposal |
| **Summer 2019** | Oral Presentation for Thesis Proposal |
| **Fall 2019** | Medical Leave of absence |
| **Spring 2020** February 3rd, 2020 | Abstract approved by thesis advisor |
| **March 13, 2020** | Mid-term progress report |

## REQUIRED RESOURCES

 In order to complete my Thesis as a MATLAB application I will need to find a way to fix the &quot;Error using zeros&quot; I am currently getting. Due to the size of the datasets needed exceeding the size of the allowed by my local hardware of my personal computer.

 This is why moving forward I would require hardware with higher computational capabilities. As well as moving the project completely from MATLAB to python to achieve the desired speed and accuracy of recognition.

## REFERENCES

[1] Deafness and hearing loss. Retrieved September 9, 2019 from https://www.who.int/news-
room/fact-sheets/detail/deafness-and-hearing-loss

[2] 2019. Garbage in, garbage out. (June 2019). Retrieved September 10, 2019 from https://en.wikipedia.org/wiki/Garbage\_in,\_garbage\_out

[3] Akash. 2018. ASL Alphabet. (April 2018). Retrieved September 10, 2019 from https://www.kaggle.com/grassknoted/asl-alphabet

Abhishek Pandey. Pramod Rathore. Dr.S.Balamurugan. 2019. Machine Learning and Deep Learning Algorithms: BPB Publications.

Geron Aurélien. 2017. Hands-on Machine Learning with Scikit-Learn &amp; TensorFlow: Concepts, Tools, and Techniques to build Intelligent Systems, Sebastopol: OReilly Media.

2019. A Gentle Introduction to Object Recognition With Deep Learning. (July 2019). Retrieved September 9, 2019 from https://machinelearningmastery.com/object-recognition-with-deep-learning

Dang Ha The Hien. 2017. The Modern History of Object Recognition - Infographic. (November 2017). Retrieved September 9, 2019 from https://medium.com/@nikasa1889/the-modern-history-of-object-recognition-infographic-aea18517c318

Sumit Saha. 2018. A Comprehensive Guide to Convolutional Neural Networks - the ELI5 way. (December 2018). Retrieved September 9, 2019 from https://towardsdatascience.com/a-comprehensive-guide-to-convolutional-neural-networks-the-eli5-way-3bd2b1164a53

Thesis and Dissertation Guide. Retrieved September 9, 2019 from https://gradschool.unc.edu/academics/thesis-diss/guide/

trainImageCategoryClassifier. Retrieved September 10, 2019 from https://mathworks.com/help/vision/ref/trainimagecategoryclassifier.html

Bethea Davida. 2018. Bag of Visual Words in a Nutshell. (July 2018). Retrieved September 10, 2019 from https://towardsdatascience.com/bag-of-visual-words-in-a-nutshell-9ceea97ce0fb
