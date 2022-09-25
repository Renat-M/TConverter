//
//  ViewController.swift
//  TConverter
//
//  Created by Renat Mukhametov on 10.07.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var celsius: UILabel!
    @IBOutlet weak var fahrenheit: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = -100
            slider.value = 0
        }
    }

    @IBAction func sliderChange(_ sender: UISlider) {
        let step: Float = 1
        let roundedValue = round(sender.value / step) * step
        sender.value = roundedValue
        let temperatureCelsius = Int(sender.value)
        celsius.text = "\(temperatureCelsius) ºC"
        let fahrenheitTemperature = Int(sender.value * 1.8 + 32)
        fahrenheit.text = "\(fahrenheitTemperature) ºF"
    }
}
