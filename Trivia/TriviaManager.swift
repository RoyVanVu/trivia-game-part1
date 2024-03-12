//
//  TriviaManager.swift
//  Trivia
//
//  Created by Khoa Vu on 3/11/24.
//

import Foundation

class TriviaManager {
    static let shared = TriviaManager()
    
    private init() {}
    
    var questions: [TriviaQuestion] = [
        TriviaQuestion(question: "What is the capital of France?", answers: ["Paris", "London", "Berlin", "Madrid"], correctAnswerIndex: 0),
        TriviaQuestion(question: "What is 2 + 2?", answers: ["3", "4", "5", "6"], correctAnswerIndex: 1),
        TriviaQuestion(question: "Which planet is known as the Red Planet?", answers: ["Earth", "Mars", "Jupiter", "Saturn"], correctAnswerIndex: 1)
    ]
    
    var currentQuestionIndex = 0
    
    func nextQuestion() -> TriviaQuestion? {
        if currentQuestionIndex < questions.count {
            let question = questions[currentQuestionIndex]
            currentQuestionIndex += 1
            return question
        } else {
            return nil
        }
    }
    
    func resetTrivia() {
        currentQuestionIndex = 0
    }
}
