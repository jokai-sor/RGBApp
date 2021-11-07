//
//  MainViewController.swift
//  RGBApp
//
//  Created by Дмитрий Бизюков on 06.11.2021.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func setNewColor(for color: UIColor)
}

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSettings" {
            if let settingsVC = segue.destination as? SettingsViewController {
                settingsVC.currentColor = view.backgroundColor
                settingsVC.delegate = self
            }
        }
    }
}

extension MainViewController: SettingsViewControllerDelegate {
    func setNewColor(for color: UIColor) {
        view.backgroundColor = color
    }
}
