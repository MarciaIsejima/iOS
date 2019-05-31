//
//  ViewController.swift
//  stopwatch
//
//  Created by Vu Anh Pham on 27/5/19.
//  Copyright © 2019 Vu Anh Pham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    
    let stopwatch1 = stopwatch()
    //let timer: Timer?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

//    func updateElapsedTimes(timer: Timer) {
//        print("Updating")
//        timeLabel.text = "\(stopwatch1.elapsedTime)"
//    }
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
      print("Starting stopwatch")
        stopwatch1.start()
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { [weak self] (timer) in
            guard let strongSelf = self else {return}
            if strongSelf.stopwatch1.isRunning {
                print("Updating")
                strongSelf.timeLabel.text  = strongSelf.stopwatch1.elapsedTimeAsString
            } else {
                print("invalidate timer")
                timer.invalidate()
            }
            
        }
            
        
    }
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
        print("Stopping stopwatch")
        stopwatch1.stop()
    }
    
}

