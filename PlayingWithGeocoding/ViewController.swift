//
//  ViewController.swift
//  PlayingWithGeocoding
//
//  Created by Michael on 9/9/15.
//  Copyright © 2015 Michael. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController {
    
    /* label to display lat/long */
    /* text field is where user enters zip */
    /* button fires the action to translate zip to lat/long */
    var labelTop: UILabel!
    var textFieldCenter: UITextField!
//    var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        makeLayout()
        
        labelTop.text = "Geocoding Placeholder"
        textFieldCenter.placeholder = "Zipcode Placeholder"
    }

    func makeLayout() {
        initViews()
        createConstraints()
    }
    
    func initViews() -> Void {
        // initialize
        labelTop = UILabel()
        textFieldCenter = UITextField()
        
        // prepare autolayout
        labelTop.translatesAutoresizingMaskIntoConstraints = false
        textFieldCenter.translatesAutoresizingMaskIntoConstraints = false
        
        // add to superview
        self.view.addSubview(labelTop)
        self.view.addSubview(textFieldCenter)
    }
    
    func createConstraints() {
        // views to add constraints to
        let viewsDictionary = Dictionary(dictionaryLiteral: ("labelTop", labelTop), ("textFieldCenter", textFieldCenter))
        let horizontalConstraintLabel = NSLayoutConstraint.constraintsWithVisualFormat("H:|[labelTop]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary)
        self.view.addConstraints(horizontalConstraintLabel)
        let horizontalConstraintTextField = NSLayoutConstraint.constraintsWithVisualFormat("H:|[textFieldCenter]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary)
        self.view.addConstraints(horizontalConstraintTextField)
        let verticalConstraintTextField = NSLayoutConstraint.constraintsWithVisualFormat("V:|-50-[labelTop][textFieldCenter]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary)
        self.view.addConstraints(verticalConstraintTextField)
    }
    
//    func buttonPressed() {
//        print("button got pressed")
//    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.AllButUpsideDown
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

