//
//  QuestionGroup.swift
//  RableWabble
//
//  Created by George Solorio on 6/5/20.
//  Copyright © 2020 George Solorio. All rights reserved.
//

import Foundation
import Combine

public class QuestionGroup: Codable {

    public class Score: Codable {
        
        public var correctCount = 0 {
            didSet { updateRunningPercentage() }
        }
        public var incorrectCount = 0 {
            didSet { updateRunningPercentage() }
        }
        
        public init () { }
        
        private enum CodingKeys: String, CodingKey {
            case correctCount
            case incorrectCount
        }
        
        public required init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.correctCount = try container.decode(Int.self, forKey: .correctCount)
            self.incorrectCount = try container.decode(Int.self, forKey: .incorrectCount)
            updateRunningPercentage()
           
        }
        
        private func updateRunningPercentage() {
            let totalCount = correctCount + incorrectCount
            guard totalCount > 0 else {
                runningPercentage = 0
                return
            }
            runningPercentage = Double(correctCount) / Double(totalCount)
        }
        
        @Published public var runningPercentage: Double = 0
        
        public func reset() {
            correctCount = 0
            incorrectCount = 0
        }
    }

    
    public let questions: [Question]
    public private(set) var score: Score
    public let title: String
    
    public init(questions: [Question],
                score: Score = Score(),
                title: String) {
        self.questions = questions
        self.score = score
        self.title = title
    }
}
