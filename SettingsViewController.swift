//
//  SettingsViewController.swift
//  Tip Calculator
//
//  Created by Jenny Li on 12/15/18.
//  Copyright © 2018 Jenny Li. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    
    @IBOutlet weak var defTipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }
    
    @IBAction func changeDefTip(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.set(defTipControl.selectedSegmentIndex,forKey: "defTip")
            defaults.synchronize()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let defaults = UserDefaults.standard
        defTipControl.selectedSegmentIndex = defaults.integer(forKey: "defTip")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
