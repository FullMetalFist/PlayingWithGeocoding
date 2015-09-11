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
    var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        makeLayout()
    }

    func makeLayout() {
//        let view1 = UIView()
//        view1.translatesAutoresizingMaskIntoConstraints = false
//        view1.backgroundColor = UIColor.blueColor()
//        
//        let view2 = UIView()
//        view2.translatesAutoresizingMaskIntoConstraints = false
//        view2.backgroundColor = UIColor.greenColor()
//        
//        view.addSubview(view1)
//        view.addSubview(view2)
//        
//        let viewsDictionary = ["view1":view1, "view2": view2, "labelTop":labelTop, "textFieldCenter":textFieldCenter]
//        let metricsDictionary = ["view1Height":50.0, "view2Height":30.0, "viewWidth":100.0]
//        
//        let view1_constraint_H:Array = NSLayoutConstraint.constraintsWithVisualFormat("H:[view1(viewWidth)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: metricsDictionary, views: viewsDictionary)
//        let view1_constraint_V:Array = NSLayoutConstraint.constraintsWithVisualFormat("V:[view1(view1Height)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: metricsDictionary, views: viewsDictionary)
//        
//        view1.addConstraints(view1_constraint_H)
//        view1.addConstraints(view1_constraint_V)
//        
//        let view2_constraint_H:Array = NSLayoutConstraint.constraintsWithVisualFormat("H:[view2(viewWidth)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: metricsDictionary, views: viewsDictionary)
//        let view2_constraint_V:Array = NSLayoutConstraint.constraintsWithVisualFormat("V:[view2(>=view2Height)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: metricsDictionary, views: viewsDictionary)
//        
//        view2.addConstraints(view2_constraint_H)
//        view2.addConstraints(view2_constraint_V)
//        
//        let view_constraint_H:Array = NSLayoutConstraint.constraintsWithVisualFormat("H:|-[view2]", options: NSLayoutFormatOptions(rawValue: 0), metrics: metricsDictionary, views: viewsDictionary)
//        let view_constraint_V:Array = NSLayoutConstraint.constraintsWithVisualFormat("V:|-36-[view1]- [view2]-0-|", options: NSLayoutFormatOptions.AlignAllLeading, metrics: metricsDictionary, views: viewsDictionary)
//        
//        view.addConstraints(view_constraint_H)
//        view.addConstraints(view_constraint_V)
//        
//        let control_constraint_H:Array = NSLayoutConstraint.constraintsWithVisualFormat("H:|-[button(>80)]-20-[labelTop(>=100)]", options: NSLayoutFormatOptions.AlignAllCenterY, metrics: nil, views: viewsDictionary)
//        let control_constraint_V:Array = NSLayoutConstraint.constraintsWithVisualFormat("V:[button]-40-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary)
//        view2.addConstraints(control_constraint_H)
//        view2.addConstraints(control_constraint_V)
//        
//        button.translatesAutoresizingMaskIntoConstraints = false
//        button.setTitle("Title", forState: UIControlState.Normal)
//        button.addTarget(self, action: "buttonPressed", forControlEvents: UIControlEvents.TouchUpInside)
//        button.backgroundColor = UIColor.orangeColor()
//        button.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
//        
//        labelTop.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func buttonPressed() {
        print("button got pressed")
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.AllButUpsideDown
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

