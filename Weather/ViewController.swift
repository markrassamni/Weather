//
//  ViewController.swift
//  Weather
//
//  Created by Mark Rassamni on 8/22/16.
//  Copyright © 2016 markrassamni. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //locationAuthStatus()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
       // locationAuthStatus()
    }

//    func locationAuthStatus(){
//        if CLLocationManager.authorizationStatus() == .AuthorizedWhenInUse{
//            //map.showsUserLocation = true
//            print(locationManager.location)
//        } else {
//            locationManager.requestWhenInUseAuthorization()
//        }
//    }

    

}

