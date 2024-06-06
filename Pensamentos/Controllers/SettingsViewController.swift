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
    
    let config = Configuration.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        formatView()
    }
    
    func formatView() {
        autoRefreshSw.setOn(config.autorefresh, animated: false)
        timeIntervalSl.setValue(Float(config.timeInterval), animated: false)
        colorSchemeSc.selectedSegmentIndex = config.colorScheme
        changeTimeIntervalLabel(with: config.timeInterval)
    }
    
    func changeTimeIntervalLabel(with value: Double){
        timeIntervalLb.text = "Mudar após \(Int(value)) segundos"
    }
    
    @IBAction func changeAutoRefresh(_ sender: UISwitch) {
        config.autorefresh = sender.isOn
    }
    
    @IBAction func changeTimeInterval(_ sender: UISlider) {
        let value = Double(round(sender.value))
        changeTimeIntervalLabel(with: value)
        config.timeInterval = value
    }
    @IBAction func changeColorScheme(_ sender: UISegmentedControl) {
        config.colorScheme = sender.selectedSegmentIndex
    }
}
