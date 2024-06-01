//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        HeightValue.text = "0";
        WeightValue.text = "0"
    }
    
    var calculateBrain = CalculateBrain()

    @IBOutlet weak var HeightValue: UILabel!
    @IBOutlet weak var WeightValue: UILabel!
    @IBOutlet weak var HeightSliderValue: UISlider!
    @IBOutlet weak var WeightSliderValue: UISlider!
    
    
    @IBAction func HeightSliderChange(_ sender: UISlider) {
        let height = String(format: "%.2f",sender.value)
        HeightValue.text = "\(height) m"
    }
    
    @IBAction func WeightSliderChange(_ sender: UISlider) {
        let weight = String(format: "%.2f",sender.value)
        WeightValue.text = "\(weight) kg"
    }
     
    @IBAction func CalculateBMi(_ sender: UIButton) {
        calculateBrain.calculateBMIValue(height:HeightSliderValue.value,weight:WeightSliderValue.value)
        self.performSegue(withIdentifier: "goToResult" , sender: "self");
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculateBrain.getBMIValue()
        }
    }
}

