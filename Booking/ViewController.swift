//
//  ViewController.swift
//  Booking
//
//  Created by Mac on 3/19/19.
//  Copyright © 2019 anh vu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var loadding: UILabel!
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBOutlet weak var buttonOutlet: UIButton!
    @IBOutlet weak var address: UILabel!
    var timer = 6
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startTime()
    }
   
    func startTime () {
        var _ = Timer.scheduledTimer(timeInterval: 1 , target: self, selector: #selector(ViewController.actions), userInfo: nil, repeats: true)
    }
    @objc func actions (){
        if(timer > 0) {
            timer -= 1
            timerLabel.text = String(timer)
        }
    }
  
    
}



