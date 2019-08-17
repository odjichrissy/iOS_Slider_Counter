//
//  ViewController.swift
//  03_modanaTest
//
//  Created by Chrissy Satyananda on 16/08/19.
//  Copyright © 2019 Odjichrissy. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
 
    @IBOutlet weak var slidingCounterTextField: UITextField!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var slideLabel: UILabel!
    
    var counter : Int = 0
    var savedCounter = UserDefaults.standard.integer(forKey: "counter")
    var savedSliderPosition = UserDefaults.standard.float(forKey: "sliderPosition")
    
    override func viewDidLoad() {
        timeLabel.isHidden = true
        slideLabel.text = "Slide > to start counting"
        super.viewDidLoad()
//        print(counter)
        slider.minimumValue = 0
        slider.maximumValue = 1
        
        slidingCounterTextField.text = "\(savedCounter)"
        counter = savedCounter
        
        slider.value = savedSliderPosition
    }
    
    @IBAction func sliderValueChange(_ sender: UISlider) {
        if slider.value == slider.maximumValue{
            slideLabel.text = "Slide < to count more"
            timeLabel.isHidden = false
//            print("counterbefore: ", counter)
            
            // Displaying timestamp when the slider is slided
            let now = Date()
            let formatter = DateFormatter()
            formatter.timeZone = TimeZone.current
            formatter.dateFormat = "HH:mm"
            let dateString = formatter.string(from: now)
            timeLabel.text = "Started at \(dateString)"
            
            // Counter Increment when the slider is moved to the right
            counter = (counter + 1)
//            print(counter)
            slidingCounterTextField.text = "\(counter)"
            UserDefaults.standard.set(slider.value, forKey: "sliderPosition")
            // Storing the final value of counter to USERDEFAULT
            UserDefaults.standard.set(counter, forKey: "counter")
//            print("counterafter: ", counter)
            
        }else{
            // Counter increment when the slider is moved to the left
            counter = (counter + 1)
//            print(counter)
            slidingCounterTextField.text = "\(counter)"
            slideLabel.text = "Slide > to count more"
            // Storing the final value of counter to USERDEFAULT
            UserDefaults.standard.set(counter, forKey: "counter")
        }

    }
    
    @IBAction func resetPressed(_ sender: UIButton) {
        counter = 0
        savedCounter = 0
        slidingCounterTextField.text = "0"
        slideLabel.text = "Slide > to start counting"
        slider.value = 0
    }
    
    
}
