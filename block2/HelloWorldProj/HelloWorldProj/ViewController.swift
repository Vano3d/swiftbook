//
//  ViewController.swift
//  HelloWorldProj
//
//  Created by Chupinsky Ivan on 18.05.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloWorldLabel: UILabel!
    
    @IBOutlet weak var showMeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        helloWorldLabel.isHidden = true
        showMeButton.layer.cornerRadius = 10
    }


    @IBAction func tappedShowMeButton(_ sender: Any) {
        
        helloWorldLabel.isHidden.toggle()
        
        if helloWorldLabel.isHidden {
            showMeButton.setTitle("Show me", for: .normal)
        } else {
            showMeButton.setTitle("Hide me", for: .normal)
        }
        
        
    }
}

