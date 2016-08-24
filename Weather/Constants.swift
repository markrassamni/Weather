//
//  Constants.swift
//  Weather
//
//  Created by Mark Rassamni on 8/23/16.
//  Copyright © 2016 markrassamni. All rights reserved.
//

import Foundation

let URL_BASE = "http://api.openweathermap.org/data/2.5/forecast?lat="
let URL_LON = "&lon="
let URL_ID = "&units=imperial&appid=ffebf1bbc2f40c972b0936bf2d56fb06"

//IDS c4dd98941f93c7b6789e38c57546c676  2441da11eb388eff4a31985d60174eea

// URL_BASE latitude URL_LON longitude URL_ID

//http://api.openweathermap.org/data/2.5/forecast?lat=32.7729&lon=-117.07562&appid=ffebf1bbc2f40c972b0936bf2d56fb06

typealias DownloadComplete = () -> ()
