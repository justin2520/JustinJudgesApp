//
//  ReviewsClass.swift
//  JustinJudgesApp
//
//  Created by JUSTIN WEBER on 11/4/24.
//

import Foundation

enum Rating: Int, Codable, Comparable{
    case Zero = 0, One, Two, Three, Four, Five
    
    private var sortOrder: Int {
            switch self {
            case .Zero:
                return 0
                
            case .One:
                return 1
                
            case .Two:
                return 2
                
            case .Three:
                return 3
                
            case .Four:
                return 4
                
            case .Five:
                return 5
                
            }
        }
    
    static func ==(lhs: Rating, rhs: Rating) -> Bool {
            return lhs.sortOrder == rhs.sortOrder
        }
    
    static func <(lhs: Rating, rhs: Rating) -> Bool {
       return lhs.sortOrder < rhs.sortOrder
    }
    
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
    
    func equals(otherReview: Reviews) -> Bool{
        if type == otherReview.type && name == otherReview.name && description == otherReview.description && rating == otherReview.rating{
            return true
        }
        return false
    }
}
