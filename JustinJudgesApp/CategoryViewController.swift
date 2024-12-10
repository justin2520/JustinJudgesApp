//
//  CategoryViewController.swift
//  JustinJudgesApp
//
//  Created by JUSTIN WEBER on 10/31/24.
//

import UIKit

class CategoryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var catagoryOutlet: UITextField!
    
    
    @IBAction func addCatagoryAction(_ sender: UIButton) {
        if catagoryOutlet.text != "", let newCat : String  = catagoryOutlet.text{
            categories.append(newCat)
            catagoryOutlet.text = ""
            categoryTableViewOutlet.reloadData()
            catagoryOutlet.placeholder = "Add Catagory Name..."
        }else{
            catagoryOutlet.placeholder = "enter something!"
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath)
        
        cell.textLabel?.text = categories[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        AppData.category = categories[indexPath.row]
        
        performSegue(withIdentifier: "reviewsSegue", sender: nil)
        
        AppData.sortedName = []
        AppData.sortedReview = []
        AppData.sortedDescription = []
        AppData.reviewsForCatagory = []
    }
    
    @IBOutlet weak var categoryTableViewOutlet: UITableView!
    
    var categories = ["Schools", "Restaurants", "People", "Video Games", "Movies", "Books"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        categoryTableViewOutlet.delegate = self
        categoryTableViewOutlet.dataSource = self
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
