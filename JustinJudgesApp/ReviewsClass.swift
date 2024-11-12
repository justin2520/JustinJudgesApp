//
//  ReviewsClass.swift
//  JustinJudgesApp
//
//  Created by JUSTIN WEBER on 11/4/24.
//

import Foundation

enum Rating: Int{
    case Zero = 0, One, Two, Three, Four, Five
}

class Reviews{
    var type: String
    var name: String
    var description: String
    var rating: Rating
    
    init(type: String, name: String, description: String, rating: String) {
        self.type = type
        self.name = name
        self.description = description
        
        switch(rating){
        case "Zero":
            self.rating = .Zero
            
        case "One":
            self.rating = .One
            
        case "Two":
            self.rating = .Two
            
        case "Three":
            self.rating = .Three
            
        case "Four":
            self.rating = .Four
            
        case "Five":
            self.rating = .Five
            
        default:
            self.rating = .Zero
        }
    }
}
