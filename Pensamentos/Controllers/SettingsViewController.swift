//
//  SettingsViewController.swift
//  Pensamentos
//
//  Created by Vitoria Ortega on 05/06/24.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var autoRefreshSw: UISwitch!
    @IBOutlet weak var timeIntervalSl: UISlider!
    @IBOutlet weak var timeIntervalLb: UILabel!
    @IBOutlet weak var colorSchemeSc:
    UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    @IBAction func changeAutoRefresh(_ sender: UISwitch) {
    }
    
    @IBAction func changeTimeInterval(_ sender: UISlider) {
    }
    @IBAction func changeColorScheme(_ sender: UISegmentedControl) {
    }
}
