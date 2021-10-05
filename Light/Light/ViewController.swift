//
//  ViewController.swift
//  Light
//
//  Created by Logan Thompson on 10/5/21.
//

import UIKit

class ViewController: UIViewController {
    var lightOn = true

    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
        updateUI()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

        // Do any additional setup after loading the view.
    }

    func updateUI() {
        view.backgroundColor = lightOn ? .white : .black
    }
 
}

