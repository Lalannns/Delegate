//
//  ViewController.swift
//  Delegate
//
//  Created by Allan Auezkhan on 08.09.2025.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func openModalView(_ sender: Any) {
        
        let modalView = storyboard?.instantiateViewController(withIdentifier: "ModalViewController") as! ModalViewController
        
        modalView.modalPresentationStyle = .overCurrentContext
        
        modalView.categoryArray = ["Food","Clothing","Electronics","Other"]
        
        present(modalView, animated: true)
        
    
        
        
    }
    
}

