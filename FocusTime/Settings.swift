//
//  Settings.swift
//  FocusTime
//
//  Created by Dino Andrighetto on 10/14/17.
//  Copyright © 2017 Dino Andrighetto. All rights reserved.
//
import Foundation
import UIKit

class Settings: UIViewController {
    
    var min = 0

    
    @IBOutlet weak var SliderOutlet: UISlider!
    @IBAction func Slider(_ sender: UISlider) {
        
        min = Int(sender.value)
        TimingLabel.text = String(min) + " minutes"
        
    }
    
    @IBOutlet weak var TimingLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
