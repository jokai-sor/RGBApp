//
//  ViewController.swift
//  RGBApp
//
//  Created by Дмитрий Бизюков on 22.10.2021.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet var redSliderLabel: UILabel!
    @IBOutlet var greenSliderLabel: UILabel!
    @IBOutlet var blueSliderLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var viewRGB: UIView!
    
    var delegate: SettingsViewControllerDelegate!
    
    var currentColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewRGB.layer.cornerRadius = 20
        viewRGB.backgroundColor = currentColor
        
        redSlider.value = Float(CGFloat(currentColor.ciColor.red))
        blueSlider.value = Float(CGFloat(currentColor.ciColor.blue))
        greenSlider.value = Float(CGFloat(currentColor.ciColor.green))
    }

    @IBAction func redSliderAction() {
        setViewColor()
    }
    
    @IBAction func greenSliderAction() {
        setViewColor()
    }
    
    @IBAction func blueSliderAction() {
        setViewColor()
    }
    
    private func setViewColor() {
        
        let tempRed = CGFloat(redSlider.value)
        let tempGreen = CGFloat(greenSlider.value)
        let tempBlue = CGFloat(blueSlider.value)
        
        redSliderLabel.text = String(format: "%.2f", tempRed)
        greenSliderLabel.text = String(format: "%.2f", tempGreen)
        blueSliderLabel.text = String(format: "%.2f", tempBlue)

        currentColor = UIColor(red: tempRed,
                             green: tempGreen,
                             blue: tempBlue,
                             alpha: 1.0)
        
        viewRGB.backgroundColor = currentColor
    }
    
    @IBAction func saveButtonPressed() {
        //        view.endEditing(true)
        delegate.setNewColor(for: currentColor)
        dismiss(animated: true)
    }
    
}

