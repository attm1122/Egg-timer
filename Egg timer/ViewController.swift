//
//  ViewController.swift
//  Egg timer
//
//  Created by Aubrey Mazinyi on 12/2/18.
//  Copyright © 2018 AubijuanApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    func processTimer () {
        
    print("A second has passed")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var eggTimer: Timer!
        
        eggTimer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: Selector(("processTimer")), userInfo: nil, repeats: true)
        
        eggTimer.invalidate()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

