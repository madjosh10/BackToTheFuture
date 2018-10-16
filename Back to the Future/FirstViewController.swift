//
//  FirstViewController.swift
//  Back to the Future
//
//  Created by Joshua Madrigal on 3/14/17.
//  Copyright © 2017 MadMonte. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    var timer = Timer()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let year = Utilities().getCurrentYear()
        
        labelOne.text = Utilities().getLetterAtIndex(str: year, location: 0)
        labelTwo.text = Utilities().getLetterAtIndex(str: year, location: 1)
        labelThree.text = Utilities().getLetterAtIndex(str: year, location: 2)
        labelFour.text = Utilities().getLetterAtIndex(str: year, location: 3)
        
        self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(FirstViewController.Tick), userInfo: nil, repeats: true)
    }
    
    func Tick() {
        timeLabel.text = Utilities().getCurrentTime()
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

