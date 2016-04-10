//
//  ViewController.swift
//  spending ledger
//
//  Created by brandon toborg on 4/9/16.
//  Copyright © 2016 brandon toborg. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    
    @IBOutlet weak var Who: UIPickerView!
    
    var WhoData: [String] = [String]()
    
    
    @IBOutlet weak var Catagory: UIPickerView!
    
    var CatagoryData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Who.delegate = self
        Who.dataSource = self

        Catagory.delegate = self
        Catagory.dataSource = self

        
        WhoData = ["Taylor Debit", "Brandon Debit", "Joint Debit", "Taylor Credit", "Brandon Credit"]
        
        CatagoryData = ["Auto Repair", "HouseHold Goods", "Gas", "Car Payment", "Student Loan Payment", "Eating Out", "Services", "Insurance", "Health", "Home Improvment", "Personal", "Fun", "Groceries"]
        
    }

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return WhoData.count
        return CatagoryData.count
    }
    
    func WhoView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return WhoData.count
    }
    
    func CatagoryView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return CatagoryData.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return WhoData[row]
        return CatagoryData[row]
    }
}

