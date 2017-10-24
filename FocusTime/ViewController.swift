//
//  ViewController.swift
//  FocusTime
//
//  Created by Dino Andrighetto on 10/14/17.
//  Copyright © 2017 Dino Andrighetto. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var seconds = 60
    var min = 30
    var timer = Timer()
    

    @IBOutlet weak var SettingButton: UIBarButtonItem!
    @IBOutlet weak var TimeLabel: UILabel!
    @IBOutlet weak var SecondsLabel: UILabel!
   
    
    @IBOutlet weak var StartOutlet: UIButton!
    @IBAction func StartButton(_ sender: AnyObject) {
        
         timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.counter), userInfo: nil, repeats: true)
        }
    
        func counter()
        {
            seconds -= 1
            TimeLabel.text = String(min)
            SecondsLabel.text = String(seconds)
            
            if(seconds == 0){
                min -= 1
                seconds = 60
            }
            
        if (min == 0)
        {
            timer.invalidate()
        }

    }

    @IBOutlet weak var PauseOutlet: UIButton! 
    @IBAction func PauseButton(_ sender: AnyObject) {
        timer.invalidate()
    }
    
    @IBOutlet weak var ResetOutlet: UIButton!
    @IBAction func ResetButton(_ sender: AnyObject) {
        TimeLabel.text = "30"
        SecondsLabel.text = "60"
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

