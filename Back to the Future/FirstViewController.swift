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
        Tick()
        
        
        
    }
    
    func Tick() {
        timeLabel.text = Utilities().getCurrentTime()
        UIView.animate(withDuration: 1.0, delay: 0.0, options: .curveEaseOut, animations: {
            self.view.alpha = 0.5
            
        }) { (true) in
            self.view.alpha = 1.0
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

