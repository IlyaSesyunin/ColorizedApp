//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Илья Сесюнин on 23.06.2022.
//

import UIKit

class SettingsViewController: UIViewController {
    
    //MARK: - IB Outlets
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var mainView: UIView!
    
    var color: Color!
    var delegate: SettingsViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        
        setupMainView()
        setupSliders()
        setupLabels()
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
        color = Color(red: redSlider.value, green: greenSlider.value, blue: blueSlider.value)
    }
    
    @IBAction func doneButtonPressed() {
        delegate.setColor(color)
        dismiss(animated: true)
    }
    
    // MARK: - Private Methods
    private func setupMainView() {
        mainView.layer.cornerRadius = 10
        mainView.backgroundColor = color.getColor
    }
    
    private func setupSliders() {
        redSlider.value = color.red
        greenSlider.value = color.green
        blueSlider.value = color.blue
    }
    
    private func setupLabels() {
        redLabel.text = String(format: "%.2f", color.red)
        greenLabel.text = String(format: "%.2f", color.green)
        blueLabel.text = String(format: "%.2f", color.blue)
    }
}
