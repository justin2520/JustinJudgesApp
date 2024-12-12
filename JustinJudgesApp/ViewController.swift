//
//  ViewController.swift
//  JustinJudgesApp
//
//  Created by JUSTIN WEBER on 10/30/24.
//Hi!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
// Hi Justin :)
// Hello Peter Kickle :[
// Lemons are the best fruit
//they are pretty good
//:( 

import UIKit

class AppData{
    static var category = ""
    static var reviews = [Reviews]()
    static var sortedReviews = [Reviews]()
    static var index = 0
    static var sortedName = [String]()
    static var sortedReview = [Rating]()
    static var sortedDescription = [String]()
    static var reviewsForCatagory = [Reviews]()
    
//    static var sortedName = [String]()
//    static var sortedReview = [Rating]()
//    static var sortedDescription = [String]()
    
    static var defaults = UserDefaults.standard
    
    static var encoder = JSONEncoder()
    static var decoder = JSONDecoder()
    

        
        
    }
    
    class ViewController: UIViewController {
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            
            
            if let reviews = AppData.defaults.data(forKey: "reviews"){
                if let reviewDecode = try? AppData.decoder.decode([Reviews].self, from: reviews){
                    if(reviewDecode.count == 0){
                        AppData.reviews = []
                    }
                    else{
                        AppData.reviews = reviewDecode
                    }
                }
            }
        }
        
        
        
        
        
        
    }

