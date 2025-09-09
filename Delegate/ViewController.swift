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
        
        present(modalView, animated: true)
        
    }
    
}

