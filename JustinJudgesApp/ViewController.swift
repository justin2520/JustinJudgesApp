//
//  ViewController.swift
//  JustinJudgesApp
//
//  Created by JUSTIN WEBER on 10/30/24.
//
// Hi Justin :)
// Hello Peter Kickle :[
// Lemons are the best fruit
//they are pretty good
//:( 

import UIKit

class AppData{
    static var category = ""
    static var reviews = [Reviews]()
    static var index = 0
    static var sortedName = [String]()
    static var sortedReview = [Rating]()
    static var sortedDescription = [String]()
    
    static let defaults = UserDefaults.standard
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if let mov = AppData.defaults.array(forKey: "review"){
            AppData.reviews = mov as! [Reviews]
        }
    }

    
    
    
    

}

