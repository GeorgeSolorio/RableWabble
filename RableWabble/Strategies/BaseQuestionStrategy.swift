//
//  BaseQuestionStrategy.swift
//  RableWabble
//
//  Created by George Solorio on 6/7/20.
//  Copyright © 2020 George Solorio. All rights reserved.
//

import Foundation

public class BaseQuestionStrategy {
    
    public var correctCount: Int {
        get { return questionGroup.score.correctCount }
        set { questionGroup.score.correctCount = newValue }
    }
    
    public var incorrectCount: Int {
        get { return questionGroup.score.incorrectCount }
        set { questionGroup.score.incorrectCount = newValue }
    }
    
    private var questionGroupCaretaker: QuestionGroupCaretaker
    
    private var questionGroup: QuestionGroup {
        return questionGroupCaretaker.selectedQuestionGroup
    }
    
    private var questionIndex = 0
    private let questions: [Question]
    
    public init(questionGroupCaretaker: QuestionGroupCaretaker, questions: [Question]) {
        self.questionGroupCaretaker = questionGroupCaretaker
        self.questions = questions
        
        self.questionGroupCaretaker.selectedQuestionGroup.score.reset()
    }
}

extension BaseQuestionStrategy: QuestionStrategy {
    
    public var title: String {
        return questionGroup.title
    }
    
    public func advanceToNextQuestion() -> Bool {
        try? questionGroupCaretaker.save()
        guard questionIndex + 1 < questions.count else {
            return false
        }
        questionIndex += 1
        return true
    }
    
    public func currentQuestion() -> Question {
        return questions[questionIndex]
    }
    
    public func markQuestionCorrect(_ question: Question) {
        correctCount += 1
    }
    
    public func markQuestionIncorrect(_ question: Question) {
        incorrectCount += 1
    }
    
    public func questionIndexTitle() -> String {
        return "\(questionIndex + 1)/\(questions.count)"
    }
    
    
}
