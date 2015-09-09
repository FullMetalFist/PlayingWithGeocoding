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
    
    var labelTop: UILabel!
    var textFieldCenter: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        makeLayout()
    }

    func makeLayout() {
        let view1 = UIView()
        view1.translatesAutoresizingMaskIntoConstraints = false
        view1.backgroundColor = UIColor.blueColor()
        
        let view2 = UIView()
        view2.translatesAutoresizingMaskIntoConstraints = false
        view2.backgroundColor = UIColor.greenColor()
        
        view.addSubview(view1)
        view.addSubview(view2)
        
        let viewsDictionary = ["view1":view1, "view2": view2, "labelTop":labelTop, "textFieldCenter":textFieldCenter]
        let metricsDictionary = ["view1Height":50.0, "view2Height":30.0, "viewWidth":100.0]
        
        let view1_constraint_H:Array = NSLayoutConstraint.constraintsWithVisualFormat("H:[view1(viewWidth)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: metricsDictionary, views: viewsDictionary)
        let view1_constraint_V:Array = NSLayoutConstraint.constraintsWithVisualFormat("V:[view1(view1Height)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: metricsDictionary, views: viewsDictionary)
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

