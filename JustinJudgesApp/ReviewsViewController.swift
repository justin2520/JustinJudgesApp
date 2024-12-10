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
        
        for _ in AppData.reviewsForCatagory {
                count += 1
        }
        
        return count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "reviewsCell", for: indexPath) as! ReviewsCell
       
        cell.reviewLabelOutlet.text = AppData.reviewsForCatagory[indexPath.row].name
        
        for i in 0...4{
            cell.reviewSegmentedControlOutlet.setImage(UIImage(systemName: "star"), forSegmentAt: i)
        }
        if AppData.reviewsForCatagory[indexPath.row].rating.rawValue != 0{
            for i in 0...AppData.reviewsForCatagory[indexPath.row].rating.rawValue - 1{
                cell.reviewSegmentedControlOutlet.setImage(UIImage(systemName: "star.fill"), forSegmentAt: i)
            }
        }
        
        return cell
    }
    
    
    var sortMethod = ""
    
    @IBAction func SortAction(_ sender: Any) {
        
        
        
        AppData.reviewsForCatagory.sort { $0.rating > $1.rating }
    ratingsTableViewOutlet.reloadData()
        

    }
               
            
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        AppData.index = indexPath.row
        performSegue(withIdentifier: "reviewSegue", sender: self)
    }
    
    @IBOutlet weak var ratingsTableViewOutlet: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var count = -1
        for review in AppData.reviews where review.type == AppData.category{
            count += 1
            
            
            AppData.sortedName.append(review.name)
                
            AppData.sortedReview.append(review.rating)
            
            AppData.sortedDescription.append(review.description)
            
            AppData.reviewsForCatagory.append(Reviews(type: AppData.category, name: AppData.sortedName[count], description: AppData.sortedDescription[count], rating: AppData.sortedReview[count].rawValue))
            
        }
        
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
