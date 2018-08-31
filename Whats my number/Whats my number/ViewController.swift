//
//  ViewController.swift
//  Whats my number
//
//  Created by Mani on 8/27/18.
//  Copyright © 2018 Mani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBAction func saveButton(_ sender: Any) {
        UserDefaults.standard.set(textField.text, forKey: "number")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let numberObject = UserDefaults.standard.object(forKey: "number")
        if let number = numberObject as? String {
            textField.text = number
        }
    }


}

