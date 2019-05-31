//
//  stopwatch.swift
//  stopwatch
//
//  Created by Vu Anh Pham on 27/5/19.
//  Copyright © 2019 Vu Anh Pham. All rights reserved.
//

import Foundation

class stopwatch {
    //    VAR MEAN VARIBALE CAN CHANGE AND ? IS IT'S OPTIONAL
    private var startTime: Date?
    
    var elapsedTime: TimeInterval {
        if let startTime = self.startTime {
            return -startTime.timeIntervalSinceNow
        } else {
            return 0
        }
    }
    
    var elapsedTimeAsString: String {
        return String(format: "%02d:%02d.%d", Int(elapsedTime / 60),
                      Int(elapsedTime.truncatingRemainder(dividingBy: 60)),
                      Int((elapsedTime*10).truncatingRemainder(dividingBy: 10)))
    }
    
    var isRunning: Bool {
        return startTime != nil
    }
    
    func start() {
        startTime = Date()
    }
    
    func stop() {
        startTime = nil
    }

}
