//
//  ViewController.swift
//  RGBApp
//
//  Created by Дмитрий Бизюков on 22.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redSliderLabel: UILabel!
    @IBOutlet var greenSliderLabel: UILabel!
    @IBOutlet var blueSliderLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var viewRGB: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redSlider.value = 0.000
        greenSlider.value = 0.000
        blueSlider.value = 0.000
        
        redSliderLabel.text = "0.000"
        greenSliderLabel.text = "0.000"
        blueSliderLabel.text = "0.000"
        
        viewRGB.layer.cornerRadius = 20
    }

    @IBAction func redSliderAction() {
        redSliderLabel.text = String(format: "%.3f", redSlider.value)
        setViewColor()
    }
    
    @IBAction func greenSliderAction() {
        greenSliderLabel.text = String(format: "%.3f", greenSlider.value)
        setViewColor()
    }
    
    @IBAction func blueSliderAction() {
        blueSliderLabel.text = String(format: "%.3f", blueSlider.value)
        setViewColor()
    }
    
    private func setViewColor() {
        viewRGB.backgroundColor = UIColor(
            cgColor: CGColor(red: CGFloat((redSlider.value)),
                             green: CGFloat((greenSlider.value)),
                             blue: CGFloat((blueSlider.value)),
                             alpha: 1.0))
    }
    
}

