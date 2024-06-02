//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Muhammad Mukthayar on 01/06/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue : String?
    var advice : String?
    var bgColor : UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = bgColor
    }
    
    
    @IBAction func recalculateBMI(_ sender: Any) {
        self.dismiss(animated: true)
    }
}
