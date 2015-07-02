//
//  ViewController.swift
//  Simple Tip Calculator
//
//  Created by Vijay Nivas Neelakandan on 7/1/15.
//  Copyright (c) 2015 Vijay Nivas Neelakandan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtTip: UITextField!
    @IBOutlet weak var txtMealCost: UITextField!
    @IBOutlet weak var lblTipCalculated: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnCalculateTip(sender: UIButton) {
        var tip = NSNumberFormatter().numberFromString(txtTip.text)?.floatValue
        var mealCost = NSNumberFormatter().numberFromString(txtMealCost.text)?.floatValue
        var calculatedValue = mealCost! * tip! / 100;
        lblTipCalculated.text = calculatedValue.description
    }

    @IBAction func btnClear(sender: UIButton) {
        txtMealCost.text = ""
        txtTip.text = ""
        lblTipCalculated.text = ""
    }
    
}

