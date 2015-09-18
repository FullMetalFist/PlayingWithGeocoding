//
//  ViewController.swift
//  PlayingWithGeocoding
//
//  Created by Michael on 9/9/15.
//  Copyright © 2015 Michael. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, UITextFieldDelegate, CLLocationManagerDelegate {
    
    /* label to display lat/long */
    /* text field is where user enters zip */
    /* button fires the action to translate zip to lat/long */
    var labelTop: UILabel!
    var textFieldCenter: UITextField!
    var searchButton: UIButton!
    
    /* buffer views */
    var vwTop: UIView!
    var vwBottom: UIView!
    
    // geocoding
    let locationManager = CLLocationManager()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.locationManager.delegate = self
        self.textFieldCenter.delegate = self
        makeLayout()
        
        labelTop.text = "Geocoding Placeholder"
        textFieldCenter.placeholder = "Zipcode Placeholder"
        
        startSearch()
    }
    
    func startSearch() {
//        let address = "1 Infinite Loop, Cupertino, CA"
        let geocoder = CLGeocoder()
        let zipcode = "11423"

        geocoder.geocodeAddressString(zipcode) { (placemarks, error) -> Void in
            if let placemark = placemarks?[0] {
                print("\(placemark)")
            }
        }
    }

    func makeLayout() {
        initViews()
        createConstraints()
    }
    
    func initViews() -> Void {
        // initialize
        labelTop = UILabel()
        textFieldCenter = UITextField()
        searchButton = UIButton()
        
        vwTop = UIView()
        vwBottom = UIView()
        
        // prepare autolayout
        labelTop.translatesAutoresizingMaskIntoConstraints = false
        textFieldCenter.translatesAutoresizingMaskIntoConstraints = false
        searchButton.translatesAutoresizingMaskIntoConstraints = false
        vwTop.translatesAutoresizingMaskIntoConstraints = false
        vwBottom.translatesAutoresizingMaskIntoConstraints = false
        
        
        // set color
        vwTop.backgroundColor = UIColor.grayColor()
        searchButton.backgroundColor = UIColor.blueColor()
        vwBottom.backgroundColor = UIColor.grayColor()
        
        // add to superview
        self.view.addSubview(labelTop)
        self.view.addSubview(textFieldCenter)
        self.view.addSubview(searchButton)
        self.view.addSubview(vwTop)
        self.view.addSubview(vwBottom)
    }
    
    func createConstraints() {
        // views to add constraints to
        let viewsDictionary = Dictionary(dictionaryLiteral: ("labelTop", labelTop), ("textFieldCenter", textFieldCenter), ("searchButton", searchButton), ("vwTop",vwTop), ("vwBottom",vwBottom))
        let horizontalConstraintTopBuffer = NSLayoutConstraint.constraintsWithVisualFormat("H:|[vwTop]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary)
        self.view.addConstraints(horizontalConstraintTopBuffer)
        let horizontalConstraintLabel = NSLayoutConstraint.constraintsWithVisualFormat("H:|-30-[labelTop]-30-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary)
        self.view.addConstraints(horizontalConstraintLabel)
        let horizontalConstraintTextFieldButton = NSLayoutConstraint.constraintsWithVisualFormat("H:|-20-[textFieldCenter]-10-[searchButton(==textFieldCenter)]-20-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary)
        self.view.addConstraints(horizontalConstraintTextFieldButton)
        let horizontalConstraintBottomBuffer = NSLayoutConstraint.constraintsWithVisualFormat("H:|[vwBottom]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary)
        self.view.addConstraints(horizontalConstraintBottomBuffer)
        let verticalConstraintTextField = NSLayoutConstraint.constraintsWithVisualFormat("V:|-[vwTop][labelTop(50)][textFieldCenter(==labelTop)][vwBottom(==vwTop)]-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary)
        self.view.addConstraints(verticalConstraintTextField)
        let verticalConstraintButton = NSLayoutConstraint.constraintsWithVisualFormat("V:|-[vwTop][labelTop(50)][searchButton(==labelTop)][vwBottom(==vwTop)]-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary)
        self.view.addConstraints(verticalConstraintButton)
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

