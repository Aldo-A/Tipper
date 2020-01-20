//
//  ViewController.swift
//  Tipper
//
//  Created by Aldo Almeida on 1/15/20.
//  Copyright © 2020 Aldo Almeida. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getBill(_ sender: Any) {
        // Get bill amount
        let bill=Double(billAmount.text!) ?? 0
        
        // Calculate the tip and total
        let tipPercentage=[0.0, 0.10, 0.15, 0.20]
        let tip=bill * tipPercentage[tipControl.selectedSegmentIndex ]
        let total=bill+tip
        
        // Update the tip and total labels
        totalLabel.text=String(format: "$%.2f", total)
        tipLabel.text=String(format: "$%.2f", tip)
    }
    
}

 
