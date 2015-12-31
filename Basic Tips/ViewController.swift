//
//  ViewController.swift
//  Basic Tips
//
//  Created by Arnold Ballesteros on 12/29/15.
//  Copyright © 2015 Arnold Ballesteros. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TipControl: UISegmentedControl!
    @IBOutlet weak var BillField: UITextField!
    @IBOutlet weak var TipLabel: UILabel!
    @IBOutlet weak var TotalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        TipLabel.text = "$0.00"
        TotalLabel.text = "$0.00"
        
    }

    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onEditingChanged(sender: AnyObject) {
        let tipPercentages = [0.18, 0.20, 0.22]
        let tipPercentage = tipPercentages[TipControl.selectedSegmentIndex]
        let billAmount = NSString(string: BillField.text!).doubleValue
        let tip = billAmount * tipPercentage
        let total = billAmount + tip
        
        TipLabel.text = String(format: "$%.2f",  tip)
        TotalLabel.text = String (format: "$%.2f", total)
        
        
    }
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)

    }


}

