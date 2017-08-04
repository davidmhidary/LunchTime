//
//  foodData.swift
//  LunchTime
//
//  Created by David Hidary on 8/3/17.
//  Copyright © 2017 Upperline Code. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class Food {

    var food: [String] = ["Asian", "American", "Mexican", "Italian"]
    

        
        var asianFoodPlaces: [String] = [ "OBAO", "Asian Wok","New China Red Gourmet", "Poke Bowl", "Lam Zhou Handmade Noodle"]
        var asianPrice: [String] = [ "$$", "$$", "$", "$$", "$$"]
        var asianLocations: [CLLocation] = [CLLocation(latitude: 40.760643, longitude:-73.991334),CLLocation(latitude: 40.709101, longitude: -74.005836),CLLocation(latitude: 40.715008, longitude:-74.008636),CLLocation (latitude: 40.709556, longitude: -74.006835),CLLocation (latitude: 40.714076, longitude: -73.991241)]
        var asianDistance: [Double] = [3.9, 0.3, 0.5, 0.3, 1.3]
        
        var italianFoodplaces: [String] = [ "Eataly", "Giardino Door Ristorante","Harry's Italian", "Felice", "Joseph's Restaurant"]
        var italianPrice: [String] = [ "$$", "$$", "$$", "$$$", "$$$"]
        var italianDistance: [Double] = [0.09, 0.2, 0.2, 0.2, 0.4]
        var italianLocations: [CLLocation] = [CLLocation(latitude: 40.709716, longitude:-74.011714),CLLocation(latitude: 40.707523, longitude: -74.007243),CLLocation(latitude: 40.707462, longitude:-74.006787),CLLocation (latitude: 40.707882, longitude: -74.007104),CLLocation (latitude: 40.704850, longitude: -74.009593)]
        
        
        var americanFoodPlaces: [String] = [ "TGI Fridays", "Denny's","Fraunces Tavern", "Blue Smoke", "Shake Shack"]
        var americanPrice: [String] = [ "$", "$", "$$", "$$$", "$"]
        var americanDistance: [Double] = [0.2, 0.3, 0.4, 0.6, 0.6]
        var americanLocations: [CLLocation] = [CLLocation(latitude: 40.706523, longitude: -74.012960), CLLocation(latitude: 40.711499, longitude: -74.005919), CLLocation(latitude: 40.703418, longitude: -74.011365),CLLocation (latitude: 40.714829, longitude: -74.015495), CLLocation (latitude: 40.715234, longitude: -74.014904)]
        
        var mexicanFoodPlaces: [String] = [ "Chipotle Mexican Grill", "El Toro","Ooaxaca Taqueria", "Mad Dog and Beans", "Tajin"]
        var spamexPrice: [String] = [ "$", "$", "$", "$$", "$$"]
        var spamexDistance: [Double] = [0.4, 0.3, 0.4, 0.4, 0.3]
        var spamexLocations: [CLLocation] = [CLLocation(latitude: 40.760643, longitude:-73.991334), CLLocation(latitude: 40.705687, longitude: -74.012536), CLLocation(latitude: 40.735634, longitude: -74.000380), CLLocation (latitude: 40.704178, longitude: -74.010274), CLLocation (latitude: 40.707662, longitude: -74.013394)
            
        ]
        
        
        
        
        
        
        
        
        
        
    }



    
