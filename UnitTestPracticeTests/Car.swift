//
//  Car.swift
//  UnitTestPractice
//
//  Created by macbook on 13.11.17.
//  Copyright © 2017 Andersen. All rights reserved.
//

import Foundation

enum CarType {
    
    case Economy
    case OffRoad
    case Sport
}

enum CarTransmissionMode {
    
    case Park
    case Reverse
    case Neutral
    case Drive
}

class Car {
    
    var miles = 0
    var type: CarType
    var transmissionMode: CarTransmissionMode
    
    init(type: CarType, transmissionMode: CarTransmissionMode) {
        
        self.type = type
        self.transmissionMode = transmissionMode
    }
    
    func start(minutes: Int) {
        
        var speed = 0
        
        if self.type == .Economy && self.transmissionMode == .Drive {
            speed = 35
        }
        
        if self.type == .OffRoad && self.transmissionMode == .Drive {
            speed = 50
        }
        
        if self.type == .Sport && self.transmissionMode == .Drive {
            speed = 70
        }
        
        self.miles = speed * (minutes / 60)
    }
}
