//
//  MainViewController.swift
//  ColorizedApp
//
//  Created by Илья Сесюнин on 11.07.2022.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func setupColor(_ color: UIColor)
}

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(
            red: CGFloat(0.39),
            green: CGFloat(0.82),
            blue: CGFloat(0.89),
            alpha: 1
        )
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? ColorViewController else { return }
        settingsVC.delegate = self
        settingsVC.viewColor = view.backgroundColor
    }
}

// MARK: - SettingsViewControllerDelegate
extension MainViewController: SettingsViewControllerDelegate {
    func setupColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}
