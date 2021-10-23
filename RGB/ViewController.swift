//
//  ViewController.swift
//  RGB
//
//  Created by Nikita and Margarita on 21.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var monitorRGB: UIView!
    
    @IBOutlet var colorRed: UILabel!
    @IBOutlet var colorGreen: UILabel!
    @IBOutlet var colorBlue: UILabel!
    
    @IBOutlet var rangeRed: UILabel!
    @IBOutlet var rangeGreen: UILabel!
    @IBOutlet var rangeBlue: UILabel!
    
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        monitorRGB.backgroundColor = .clear
        
        sliderRed.minimumValue = 0
        sliderRed.maximumValue = 1
        sliderRed.value = 0
        sliderRed.minimumTrackTintColor = .red
        
        sliderGreen.minimumValue = 0
        sliderGreen.maximumValue = 1
        sliderGreen.value = 0
        sliderGreen.minimumTrackTintColor = .green

        sliderBlue.minimumValue = 0
        sliderBlue.maximumValue = 1
        sliderBlue.value = 0
        sliderBlue.minimumTrackTintColor = .blue
        

    }
    
    func actionRGB() {
        monitorRGB.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1)
        
    }

    @IBAction func sliderActionRed() {
        
        rangeRed.text = String(sliderRed.value)
        rangeRed.text = String(round(sliderRed.value * 100) / 100)
        
        actionRGB()
        
    }
    
    @IBAction func sliderActionGreen() {
        
        rangeGreen.text = String(sliderGreen.value)
        rangeGreen.text = String(round(sliderGreen.value * 100) / 100)
        
        actionRGB()
        
    }
    
    @IBAction func sliderActionBlue() {
        
        rangeBlue.text = String(sliderBlue.value)
        rangeBlue.text = String(round(sliderBlue.value * 100) / 100)
        
        actionRGB()
        
    }
    
}

