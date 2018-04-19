//
//  ViewController.swift
//  UIPickViewTest01
//
//  Created by D7703_16 on 2018. 4. 19..
//  Copyright © 2018년 201412402. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var myLabel: UILabel!
    //    func numberOfComponents(in pickerView: UIPickerView) -> Int {
//        return 2
//    }
//
//    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        return 10
//    }

    @IBOutlet weak var myPickView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myPickView.delegate = self
        myPickView.dataSource = self
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return 10
        }else {
            return 50
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return "1st component \(row)"
        } else {
            return "2nd component \(row)"
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        myLabel.text = "component = \(component) row = \(row)"
    }
    
}

