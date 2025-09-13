//
//  ModalViewController.swift
//  Delegate
//
//  Created by Allan Auezkhan on 08.09.2025.
//

import UIKit

class ModalViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    

    

    @IBOutlet weak var tableView: UITableView!
    
    
    @IBOutlet weak var bottomConst: NSLayoutConstraint!
    
    @IBOutlet weak var topConst: NSLayoutConstraint!
    
    
    var categoryArray: [String] = ["All", "Electronics", "Clothing", "Books", "Home & Kitchen"]
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        
        tableView.delegate = self
        
        if categoryArray * 44 < Int(view.frame.height - topConst.constant - bottomConst.constant){
                
        }
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = categoryArray[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        <#code#>
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
