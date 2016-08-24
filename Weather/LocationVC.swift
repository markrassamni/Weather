//
//  LocationVC.swift
//  Weather
//
//  Created by Mark Rassamni on 8/23/16.
//  Copyright © 2016 markrassamni. All rights reserved.
//

import UIKit
import CoreLocation

class LocationVC: UIViewController, CLLocationManagerDelegate {

    let locationManager = CLLocationManager()
    var latitude: CLLocationDegrees!
    var longitude: CLLocationDegrees!
    var apiUrl: String!
    var weather: Weather!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        //locationAuthStatus()
    }
    
   
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        //locationAuthStatus()
    }
    
    func locationAuthStatus(){
        if CLLocationManager.authorizationStatus() == .AuthorizedWhenInUse{
            currentLocation()
        } else {
            locationManager.requestWhenInUseAuthorization()
        }
    }
    
    func currentLocation () {
        if let latitude = locationManager.location?.coordinate.latitude, let longitude = locationManager.location?.coordinate.longitude {
            weather = Weather(latitude: latitude, longitude: longitude)
            apiUrl = "\(URL_BASE)\(latitude)\(URL_LON)\(longitude)\(URL_ID)"
            print(apiUrl)
            weather.downloadWeather(apiUrl)
            print(latitude)
            print(longitude)
        } else {
            print("Could not retrieve current location")
        }
    }
    
    func locationManager(manager: CLLocationManager, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
        print("Changed")
        //currentLocation()
        locationAuthStatus()
    }

}
