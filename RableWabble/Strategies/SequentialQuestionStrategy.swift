//
//  SequentialQuestionStrategy.swift
//  RableWabble
//
//  Created by George Solorio on 6/5/20.
//  Copyright © 2020 George Solorio. All rights reserved.
//

public class SequentialQuestionStrategy: QuestionStrategy {
    
    public var correctCount = 0
    public var incorrectCount = 0
    private let questionGroup: QuestionGroup
    private var questionIndex = 0
    
    public var title: String {
        return questionGroup.title
    }
    
    public init(questionGroup: QuestionGroup) {
        self.questionGroup = questionGroup
    }
    
    public func advanceToNextQuestion() -> Bool {
        guard questionIndex + 1 < questionGroup.questions.count else {
            return false
        }
        
        questionIndex += 1
        return true
    }
    
    public func currentQuestion() -> Question {
        return questionGroup.questions[questionIndex]
    }
    
    public func markQuestionCorrect(_ question: Question) {
        correctCount += 1
    }
    
    public func markQuestionIncorrect(_ question: Question) {
        incorrectCount += 1
    }
    
    public func questionIndexTitle() -> String {
        return "\(questionIndex + 1)" + "\(questionGroup.questions.count)"
    }
}
