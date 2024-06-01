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

    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    
    @IBAction func recalculateBMI(_ sender: Any) {
        self.dismiss(animated: true)
    }
}
