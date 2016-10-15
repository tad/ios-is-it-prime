//
//  ViewController.swift
//  Is It Prime
//
//  Created by Terry Donaghe on 9/20/16.
//  Copyright © 2016 Donaghe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtNumber: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    
    @IBAction func btnSubmit(_ sender: AnyObject) {
        if let number = Int(txtNumber.text!) {
            if isItPrime(number: number) {
                lblResult.textColor = UIColor(red: 0.0, green: 1.0, blue: 0.0, alpha: 1.0)
                lblResult.text = "\(number) is a prime!"
            } else {
                lblResult.textColor = UIColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
                lblResult.text = "\(number) is not a prime."
            }
        } else {
            lblResult.textColor = UIColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
            lblResult.text = "Please enter a whole number."
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

func isItPrime(number: Int) -> Bool {
    if(number == 2 || number == 3 || number == 5) {return true}
    if(number == 1 || number % 2 == 0 || number % 3 == 0 || number % 5 == 0) {
        print("PONG")
        return false
    }
    
    var i = 7
    
    while Double(i) < sqrt(Double(number)) {
        if (number % i == 0) {
            print("PING!")
            print(i)
            return false
        }
        i += 1
    }
    
    return true
}

