//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Илья Сесюнин on 23.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - IB Outlets
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var mainView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupMainView()
        redSliderAction()
        greenSliderAction()
        blueSliderAction()
        mainViewAction()
    }
    
    // MARK: - IB Actions
    @IBAction func redSliderAction() {
        redLabel.text = String(format: "%.2f", redSlider.value)
    }
    
    @IBAction func greenSliderAction() {
        greenLabel.text = String(format: "%.2f", greenSlider.value)
    }
    
    @IBAction func blueSliderAction() {
        blueLabel.text = String(format: "%.2f", blueSlider.value)
    }
    
    @IBAction func mainViewAction() {
        mainView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1.00
        )
    }
    
    // MARK: - Private Methods
    private func setupMainView() {
        mainView.layer.cornerRadius = 10
    }
}
