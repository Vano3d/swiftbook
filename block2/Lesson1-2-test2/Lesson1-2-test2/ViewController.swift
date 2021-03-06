//
//  ViewController.swift
//  Lesson1-2-test2
//
//  Created by Chupinsky Ivan on 19.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var lightRed: UIView!
    @IBOutlet weak var lightYellow: UIView!
    @IBOutlet weak var lightGreen: UIView!
    @IBOutlet weak var buttonStart: UIButton!
    
    enum WhichColor {
        case red
        case yellow
        case green
    }
    var colorState = WhichColor.red
    
    var clickCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lightRed.alpha = 0.2
        lightYellow.alpha = 0.2
        lightGreen.alpha = 0.2
        
        lightRed.layer.cornerRadius = 45
        lightYellow.layer.cornerRadius = 45
        lightGreen.layer.cornerRadius = 45
        
        buttonStart.setTitleColor(UIColor.white, for: .normal)
        
        
    
    }

    @IBAction func tappedButtonStart(_ sender: Any) {
        clickCount += 1
        
        buttonStart.setTitle("Next", for: .normal)
        
        if clickCount >= 10 {
            buttonStart.setTitle("Хватит!", for: .normal)
            
        }
        
        lightRed.alpha = 0.2
        lightYellow.alpha = 0.2
        lightGreen.alpha = 0.2
        
        switch colorState {
        case .red:
            lightRed.alpha = 1
            colorState = .yellow
        case .yellow:
            lightYellow.alpha = 1
            colorState = .green
        default:
            lightGreen.alpha = 1 
            colorState = .red
        }
        
        
        
    }
    
}

