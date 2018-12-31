//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Jenny Li on 12/15/18.
//  Copyright © 2018 Jenny Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let TIP_PERCENTAGES = [0.15, 0.18, 0.2]
        let BILL = Double(billField.text!) ?? 0
        let TIP = BILL * TIP_PERCENTAGES[tipControl.selectedSegmentIndex]
        let TOTAL = BILL + TIP
        
        tipLabel.text = String(format: "$%.2f", TIP)
        totalLabel.text = String(format: "$%.2f", TOTAL)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let defaults = UserDefaults.standard
        let defTip = defaults.integer(forKey: "defTip")
        tipControl.selectedSegmentIndex = defTip
    }
    

}

