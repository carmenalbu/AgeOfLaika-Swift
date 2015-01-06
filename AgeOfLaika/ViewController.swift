//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Carmen Albu on 06/01/15.
//  Copyright (c) 2015 XL-Team. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var dogYearsLabel: UILabel!
    @IBOutlet var dogYearsTextField: UITextField!
    @IBOutlet var convertButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func action_convertYears(sender: AnyObject) {
        let yearsString = self.dogYearsTextField.text
        var yearsInt = yearsString.toInt()!;//till yearsString.toInt represents an optional. with "!" we unwrapp it.
        
        let humanYearWhenDog2:Double = 10.5;
        let humanYearWhenDogMoreThan2:Double = 4;

        var dogYears:Double = Double(yearsInt);
        
        if(yearsInt <= 2)
        {
            dogYears *= humanYearWhenDog2
        }
        else
        {
            dogYears = 2*humanYearWhenDog2 + (dogYears-2)*humanYearWhenDogMoreThan2
        }
        
        
        self.dogYearsLabel.text = "\(dogYears)" + " Human Years"
        self.dogYearsLabel.hidden = false;
        
        self.dogYearsTextField.resignFirstResponder();
    }

}

