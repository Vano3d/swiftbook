//
//  ViewController.swift
//  Lesson2
//
//  Created by Chupinsky Ivan on 21.05.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var viewColor: UIView!
    
    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var sliderBlue: UISlider!
    @IBOutlet weak var sliderOpacity: UISlider!
    
    @IBOutlet weak var valueRed: UILabel!
    @IBOutlet weak var valueGreen: UILabel!
    @IBOutlet weak var valueBlue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewColor.layer.cornerRadius = 20
        viewColor.layer.masksToBounds = true
        
        viewColor.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: CGFloat(sliderOpacity.value))
        
    }

    @IBAction func movingSliderRed() {
        valueRed.text = String(format: "%.1f", sliderRed.value)
        valueGreen.text = String(format: "%.1f", sliderGreen.value)
        valueBlue.text = String(format: "%.1f", sliderBlue.value)
        viewColor.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: CGFloat(sliderOpacity.value))
        
    }
    
}

