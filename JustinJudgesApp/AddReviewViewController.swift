//
//  AddReviewViewController.swift
//  JustinJudgesApp
//
//  Created by JUSTIN WEBER on 11/4/24.
//

import UIKit

class AddReviewViewController: UIViewController {
    
    @IBOutlet weak var nameTextFieldOutlet: UITextField!
    
    @IBOutlet weak var ratingSegmentedControlOutlet: UISegmentedControl!
    
    @IBOutlet weak var descriptionTextViewOutlet: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitButtonAction(_ sender: UIButton) {
        AppData.reviews.append(Reviews(type: AppData.category, name: nameTextFieldOutlet.text!, description: descriptionTextViewOutlet.text!, rating: ratingSegmentedControlOutlet.titleForSegment(at: ratingSegmentedControlOutlet.selectedSegmentIndex)!))
        
            AppData.sortedName = []
            AppData.sortedReview = []
            AppData.sortedDescription = []
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
