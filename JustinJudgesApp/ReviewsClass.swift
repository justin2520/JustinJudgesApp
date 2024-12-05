//
//  ReviewsClass.swift
//  JustinJudgesApp
//
//  Created by JUSTIN WEBER on 11/4/24.
//

import Foundation

enum Rating: Int, Codable{
    case Zero = 0, One, Two, Three, Four, Five
}

class Reviews: Codable{
    var type: String
    var name: String
    var description: String
    var rating: Rating
    
    init(type: String, name: String, description: String, rating: Int) {
        self.type = type
        self.name = name
        self.description = description
        
        switch(rating){
        case 0:
            self.rating = .Zero
            
        case 1:
            self.rating = .One
            
        case 2:
            self.rating = .Two
            
        case 3:
            self.rating = .Three
            
        case 4:
            self.rating = .Four
            
        case 5:
            self.rating = .Five
            
        default:
            self.rating = .Zero
        }
    }
}
