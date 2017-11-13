//
//  ViewController.swift
//  UnitTestPractice
//
//  Created by macbook on 13.11.17.
//  Copyright © 2017 Andersen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ferrari = Car(type: .Sport, transmissionMode: .Drive)
        ferrari.start(minutes: 120)
        print(ferrari.miles)
    }



}

