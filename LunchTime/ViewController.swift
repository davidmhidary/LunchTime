//
//  ViewController.swift
//  LunchTime
//
//  Created by Upperline Code on 8/1/17.
//  Copyright © 2017 Upperline Code. All rights reserved.
//

import UIKit
import MapKit


class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var labelOne: UILabel!
  
    @IBOutlet weak var picker1: UIPickerView!
    


    var filters = ["Prices"]

        // Do any additional setup after loading the view, typically from a nib.
    
    override func viewDidLoad() {
        super.viewDidLoad()
     //   self.picker1.dataSource = self
    //    self.picker1.delegate = self
    }


    override func didReceiveMemoryWarning() {
       didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return filters.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if row == 0 {
            return filters [0]
  
            
        }else {
            return "Error"
        }
        
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if row == 0 {
           
        }
    }
    
    @IBAction func selectButton(_ sender: Any) {
        //performSegue(withIdentifier: "selectButton", sender: sender)
    }
    
}
    
