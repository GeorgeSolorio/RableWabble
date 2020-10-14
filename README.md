# RableWabble

##About
A case study based on [RayWendelich's iOS Design Patterns](https://www.raywenderlich.com/books/design-patterns-by-tutorials/v3.0) tutorial. 
This project includes common and essential design patterns found in many iOS apps.The app consists of common design patterns found in many
iOS apps, allowing the user to create quizes, test and grade their results, choose between random or sequential order of questions, save and display
user's quiz results.

##Learning Objectives
To learn common design patterns found in many iOS apps. Patterns such as
* Model-View-Controller
* Delegation
* Strategy
* Singleton
* Memento
* Observer
* Builder

##Usage
You may test this app by launching it on xcode and run the app either on any desired simulator or your own physical iOS device.
The app is a quiz app that consists of a set of Japanese related questions. 

The user will have the option of setting up the questions in random or sequential order, 
check if the answer is right and eveluate their score, choose between three sets of questions and create their own set of japanese related questions.
Results will demonstrate the overall score of the quiz once they're done

##App Delegate
The app delegate files can be found in the [App delegate](https://github.com/GeorgeSolorio/RableWabble/tree/master/RableWabble/AppDelegate) folder.
This folder consits of app delegate files given by Xcode's biolerplate code. 

##Builder
The builder files can be found in the [Builder](https://github.com/GeorgeSolorio/RableWabble/tree/master/RableWabble/Builders) folder
| File                       | Description                                                                       | Obejcts                               |
| ---------------------------|:----------------------------------------------------------------------------------|:--------------------------------------|
| QuestionGroupBuilder.swift | This file contains objects that help with the creation and deletion of a question | QuestionGroupBuilder, QuestionBuilder |

