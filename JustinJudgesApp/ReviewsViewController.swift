//
//  ReviewsViewController.swift
//  JustinJudgesApp
//
//  Created by JUSTIN WEBER on 11/4/24.
//

import UIKit

class ReviewsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    override func viewWillAppear(_ animated: Bool) {
        ratingsTableViewOutlet.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var count = 0
        
        for review in AppData.reviews {
            if review.type == AppData.category{
                count += 1
            }
        }
        
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reviewsCell", for: indexPath) as! ReviewsCell
        
        for review in AppData.reviews where review.type == AppData.category{
            AppData.sortedName.append(review.name)
                
            AppData.sortedReview.append(review.rating)
            
            AppData.sortedDescription.append(review.description)
            
        }
        
        cell.reviewLabelOutlet.text = AppData.sortedName[indexPath.row]
        
        if AppData.sortedReview[indexPath.row].rawValue != 0{
            for i in 0...AppData.sortedReview[indexPath.row].rawValue - 1{
                cell.reviewSegmentedControlOutlet.setImage(UIImage(systemName: "star.fill"), forSegmentAt: i)
            }
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        AppData.index = indexPath.row
        performSegue(withIdentifier: "reviewSegue", sender: self)
    }
    
    @IBOutlet weak var ratingsTableViewOutlet: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        ratingsTableViewOutlet.delegate = self
        ratingsTableViewOutlet.dataSource = self
    }
    
    @IBAction func addReviewButtonAction(_ sender: UIButton) {
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
