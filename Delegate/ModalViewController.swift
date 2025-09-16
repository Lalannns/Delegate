//
//  ModalViewController.swift
//  Delegate
//
//  Created by Allan Auezkhan on 08.09.2025.
//

import UIKit

protocol SelectCategoryProtocol{
    func setCategory(_ category: String)
}

class ModalViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UIGestureRecognizerDelegate  {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return typeArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = typeArray[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate?.setCategory(typeArray[indexPath.row])
        
        dismiss(animated:true)
    }
    


    @IBOutlet weak var tableView: UITableView!
    
    
    @IBOutlet weak var bottomConst: NSLayoutConstraint!
    
    @IBOutlet weak var topConst: NSLayoutConstraint!
    
    
    var typeArray: [String] = []
    
    var delegate: SelectCategoryProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        
        tableView.delegate = self
        
        if typeArray.count * 44 < Int(view.frame.height - topConst.constant - bottomConst.constant){
                let constraintValue = (view.frame.height - CGFloat(typeArray.count * 44))/2
            
            topConst.constant = constraintValue
            bottomConst.constant = constraintValue
            
        }
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector (dismissView))
        
        tap.delegate = self
        
        view.addGestureRecognizer(tap)
            
        }
    
        func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
            if (touch.view?.isDescendant(of: tableView))!{
                    return false
            } else {
                    return true
            }
    }
    
        @objc func dismissView(){
            
        dismiss(animated:true)
            
        }
    
    
    
        
    }
    
   
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


