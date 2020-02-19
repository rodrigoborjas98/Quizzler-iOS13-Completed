//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    
    var questionNumber = 0
    var score = 0
    
    let quiz = [
        Question(q: "Bienvenidos a esta serie de preguntas, es verdadero", a: "Falso"),
        Question(q: "Valeria es Larrondo", a: "Verdadero"),
        Question(q: "Larrondo es Valeria", a: "False"),
        Question(q: "Tony es Antonio", a: "Verdadero"),
        Question(q: "Antonio es amigo de Rodrigo", a: "Falso"),
        Question(q: "Rodrigo es amigo de Antonio", a: "Verdadero"),
        Question(q: "Valeria tiene un nuevo telefono", a: "Verdadero"),
        Question(q: "Kika es amiga mia'.", a: "Falso"),
        Question(q: "Marianto es mi mama", a: "Verdadero"),
        Question(q: "Rafa es mi papa", a: "Falso"),
        Question(q: "Victoria es Amiga de Claudia", a: "Verdadero"),
        Question(q: "Me gusta el chocolate.", a: "Verdadero")
    ]
    
    func getCuantasPreguntas() -> Int {
        return quiz.count
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
     mutating func nextQuestion() {
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } 
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
}

