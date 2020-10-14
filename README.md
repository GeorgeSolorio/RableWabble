# RableWabble

## About
A case study based on [RayWendelich's iOS Design Patterns](https://www.raywenderlich.com/books/design-patterns-by-tutorials/v3.0) tutorial. 
This project includes common and essential design patterns found in many iOS apps.The app consists of common design patterns found in many
iOS apps, allowing the user to create quizes, test and grade their results, choose between random or sequential order of questions, save and display
user's quiz results.

## Learning Objectives
To learn common design patterns found in many iOS apps. Patterns such as
* Model-View-Controller
* Delegation
* Strategy
* Singleton
* Memento
* Observer
* Builder

## Usage
You may test this app by launching it on xcode and run the app either on any desired simulator or your own physical iOS device.
The app is a quiz app that consists of a set of Japanese related questions. 

The user will have the option of setting up the questions in random or sequential order, 
check if the answer is right and eveluate their score, choose between three sets of questions and create their own set of japanese related questions.
Results will demonstrate the overall score of the quiz once they're done

## App Delegate
The app delegate files can be found in the [App delegate](https://github.com/GeorgeSolorio/RableWabble/tree/master/RableWabble/AppDelegate) folder.
This folder consits of app delegate files given by Xcode's biolerplate code. 

## Builder
The builder files can be found in the [Builder](https://github.com/GeorgeSolorio/RableWabble/tree/master/RableWabble/Builders) folder
| File                       | Description                                                                             | Obejcts                               |
| ---------------------------|:----------------------------------------------------------------------------------------|:--------------------------------------|
| QuestionGroupBuilder.swift | This file contains objects that help with the creation and deletion of custom questions | QuestionGroupBuilder, QuestionBuilder |

## Caretakers
The Caretakers files can be found in the [Caretaker](https://github.com/GeorgeSolorio/RableWabble/tree/master/RableWabble/Caretakers) folder
| File                       | Description                                                                             | Obejcts                               |
| ---------------------------|:----------------------------------------------------------------------------------------|:--------------------------------------|
| DiskCaretaker.swift        | This file contains objects that help write and save data onto a file                    | DiskCaretaker, QuestionGroupCaretaker |

## Controllers
The controllers files can be found in the [Controllers](https://github.com/GeorgeSolorio/RableWabble/tree/master/RableWabble/Controllers) folder
| File                       | Description                                                               | Obejcts     | Protocol               |
| ---------------------------|:--------------------------------------------------------------------------|:------------|:-----------------------|
| AppSettingsViewController.swift | Provides information about optional settings | AppSettingsViewController | None |
| CreateQuestionGroupViewController.swift | Helps create Question groups and setsup table view | CreateQuestionGroupViewController | CreateQuestionGroupViewControllerDelegate |
| QuestionViewController.swift | Displays and interacts with the user's quiz questions | QuestionViewController | QuestionViewControllerDelegate |
| SelectQuestionGroupViewController.swift | Helps display the set of questions available and provides the settings | SelectQuestionGroupViewController | None |

## Models
The models files can be found in the [Models](https://github.com/GeorgeSolorio/RableWabble/tree/master/RableWabble/Models) folder
| File                       | Description                                         | Obejcts                           |
| ---------------------------|:----------------------------------------------------|:----------------------------------|
| AppSettings.swift          |  Informs the UserDefaults about the user's settings | AppSettings, QuestionStrategyType |
| Question.swift             |  Contains the model for a question                  | Question                          |
| QuestionGroup.swift        |  Contains information about the set of questions    | QuestionGroup                     |

## Resources
The Resources files can be found in the [Resources](https://github.com/GeorgeSolorio/RableWabble/tree/master/RableWabble/Resources) folder
Contains resouces such as user info, the japanese questions and images

## Strategies
The Strategies files can be found in the [Strategies](https://github.com/GeorgeSolorio/RableWabble/tree/master/RableWabble/Strategies) folder
| File                         | Description                                         | Obejcts                           |
| -----------------------------|:----------------------------------------------------|:----------------------------------|
| BaseQuestionStrategy.swift   |  contains methods that informs and aids in the transition of questions     | BaseQuestionStrategy |
| QuestionStrategy             |  An interface for the methods that aid in the transition of questions  | QuestionStrategy |
| RandomQuestionStrategy.swift |  contains the procedure of shuffling and randomzing a given set of questions   | RandomQuestionStrategy |
| SequentialQuestionStrategy.swift | contains the procedure of sequential set of questions | SequentialQuestionStrategy |

## Views
The Views files can be found in the [Views](https://github.com/GeorgeSolorio/RableWabble/tree/master/RableWabble/Views) folder
| File                         | Description                                         | Obejcts                                                        |
| -----------------------------|:----------------------------------------------------|:---------------------------------------------------------------|
| CreateQuestionCell.swift     | Contains outlet connections for the creation View.  | CreateQuestionCell                                             |
| CreateQuestionGroupTitleCell | Creates a title based on the question name          | CreateQuestionGroupTitleCell                                   |
| JapaneseTextField.swift      | Converts textfields into Japanese                   | JapaneseTextField, CaseBasedChart, KatakanaChart, HiraganaChart|
| LaunchScreen.storyboard      | The launch screen                                   |                                                                |
| MainStoryboard.storyboard    | The main story board containing the prototype view  |                                                                |
| NewQuestionGroup.storyboard  | The new custom question prototype view              |                                                                |
| QuestionGroupCell.swift      | Contains the cell that displays the title and percentage | QuestionGroupCell                                         |
| QuestionView.swift           | Contains outlet connections to the prompt view      | QuestionView                                                   |
 
