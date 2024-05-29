//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        HeightValue.text = "0";
        WeightValue.text = "0"
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var HeightValue: UILabel!
    @IBOutlet weak var WeightValue: UILabel!
    
    @IBAction func HeightSliderChange(_ sender: UISlider) {
        print(String(format: "%.0f",sender.value))
        HeightValue.text = String(format: "%.2f",sender.value)
    }
    
    @IBAction func WeightSliderChange(_ sender: UISlider) {
        WeightValue.text = String(format: "%.2f",sender.value)

    }
}

