//
//  SecondViewController.swift
//  Back to the Future
//
//  Created by Joshua Madrigal on 3/14/17.
//  Copyright © 2017 MadMonte. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonClicked(_ sender: Any) {
        updatingLabelView()
        
        
    }
    
    func updatingLabelView() {
        let utils = Utilities()
        let year = utils.getRandomYear()
        labelOne.text = utils.getLetterAtIndex(str: year, location: 0)
        labelTwo.text = utils.getLetterAtIndex(str: year, location: 1)
        labelThree.text = utils.getLetterAtIndex(str: year, location: 2)
        labelFour.text = utils.getLetterAtIndex(str: year, location: 3)
        addingAnimationToLabels(duration: 0.5, delay: 0.0, object: labelOne)
        addingAnimationToLabels(duration: 0.5, delay: 0.2, object: labelTwo)
        addingAnimationToLabels(duration: 0.5, delay: 0.4, object: labelThree)
        addingAnimationToLabels(duration: 0.5, delay: 0.6, object: labelFour)
        
    }
    
    
    func addingAnimationToLabels(duration: Double, delay: Double, object: UIView) {
        UIView.animate(withDuration: duration, delay: delay, options: .curveEaseOut, animations: {
            object.center.x += self.view.bounds.width
            
        }) { (true) in
            
        }
        
    } // end addingAnimationToLabels func
    
    
} //end SecondViewController class

