//
//  FirstViewController.swift
//  inertial
//
//  Created by Prashant Sinha on 01/10/15.
//  Copyright © 2015 Prashant Sinha. All rights reserved.
//

import UIKit
import Charts

class LoggerController: UIViewController {

    @IBOutlet weak var triggerSwitch: UISwitch!
    @IBOutlet weak var motionTag: UITextField!
    @IBOutlet weak var rateSlider: UISlider!
    @IBOutlet weak var rateLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func shouldTrigger(sender: UISwitch) {
        if self.triggerSwitch.on {
            // Gather Values from Global Tag and Sample Rate.
            let tag  = self.motionTag.text,
                rate = Int(self.rateSlider.value)
            // Disable These
            self.motionTag.enabled = false
            self.rateSlider.enabled = false
            self.rateLabel.enabled = false
            SweetAlert().showAlert("Here's a message!", subTitle: "You clicked the button!", style: AlertStyle.Success)
        }
        else {
            // Enable Tag entry, and switches.
            self.motionTag.enabled = true
            self.rateSlider.enabled = true
            self.rateLabel.enabled = true
        }
    }

    @IBAction func shouldUpdateRateLabel(sender: UISlider) {
        let rate: Int = Int(self.rateSlider.value)
        self.rateLabel.text = "\(rate) Hz"
    }
}