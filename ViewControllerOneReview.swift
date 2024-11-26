//
//  ViewControllerOneReview.swift
//  JustinJudgesApp
//
//  Created by PETER MICKLE on 11/26/24.
//

import UIKit

class ViewControllerOneReview: UIViewController {

   
    @IBOutlet weak var LabelOutlet: UILabel!
    
    @IBOutlet weak var reviewOutlet: UISegmentedControl!
    
    
    @IBOutlet weak var discriptionOutlet: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
                        LabelOutlet.text = AppData.sortedName[AppData.index]
        
                        if AppData.sortedReview[AppData.index].rawValue != 0{
                            for i in 0...AppData.sortedReview[AppData.index].rawValue - 1{
                                reviewOutlet.setImage(UIImage(systemName: "star.fill"), forSegmentAt: i)
                            }
                        }
        
                        discriptionOutlet.text = AppData.sortedDescription[AppData.index]
                    }
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


