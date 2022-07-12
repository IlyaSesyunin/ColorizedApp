//
//  MainViewController.swift
//  ColorizedApp
//
//  Created by Илья Сесюнин on 11.07.2022.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func setColor(_ color: Color)
}

class MainViewController: UIViewController {
    
    private var color = Color(red: 1, green: 0.5, blue: 0.4)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color.getColor
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.color = color
        settingsVC.delegate = self
    }
}

// MARK: - SettingsViewControllerDelegate
extension MainViewController: SettingsViewControllerDelegate {
    func setColor(_ color: Color) {
        view.backgroundColor = color.getColor
        self.color = color
    }
}
