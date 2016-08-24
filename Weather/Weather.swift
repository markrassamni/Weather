//
//  Weather.swift
//  Weather
//
//  Created by Mark Rassamni on 8/23/16.
//  Copyright © 2016 markrassamni. All rights reserved.
//

import Foundation
import Alamofire
import CoreLocation

class Weather {
    
    private var _latitude: String!
    private var _longitude: String!
    private var _weather: String!
    private var _apiUrl: String!
    private var _temp: Int!
    private var _wind: Int!
    
    var latitude: String {
        return _latitude
    }
    
    var longitude: String {
        return _longitude
    }
    
    var weather: String {
        return _weather
    }
    
    var temp: Int {
        return _temp
    }
    
    var wind: Int {
        return _wind
    }
    
    init(latitude: CLLocationDegrees, longitude: CLLocationDegrees) {
        _latitude = "\(latitude)"
        _longitude = "\(longitude)"
        _apiUrl = "\(URL_BASE)\(_latitude)\(URL_LON)\(_longitude)\(URL_ID)"
        //downloadWeather(_apiUrl)
    }
  
    func downloadWeather(apiUrl: String){
        let url = NSURL(string: apiUrl)
        Alamofire.request(.GET, url!).responseJSON { response in
            let result = response.result
            
            if let dict = result.value as? Dictionary<String, AnyObject> {
                if let list = dict["list"] as? [Dictionary<String, AnyObject>] {
                    if let weather = list[0]["weather"] as? [Dictionary <String, AnyObject>]{
                        if let main = weather[0]["main"] as? String {
                            self._weather = main
                            print(self._weather)
                        }
                    } //end weather
                    if let main = list[0]["main"] as? Dictionary <String, Int> {
                        if let temp = main["temp"] {
                            print(temp)
                            self._temp = temp
                        }
                    } // end temp
                    if let wind = list[0]["wind"] as? Dictionary <String, Int> {
                        if let speed = wind["speed"] {
                            print(speed)
                            self._wind = speed
                        }
                    }
                } //end list
            } // end dict
        } //end request
    } //end func
    
}