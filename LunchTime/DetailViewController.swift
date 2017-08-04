//
//  DetailViewController.swift
//  LunchTime
//
//  Created by David Hidary on 8/4/17.
//  Copyright © 2017 Upperline Code. All rights reserved.
//

import UIKit
import MapKit

class DetailViewController: UIViewController {
    
    var restaurantName: String!
    var restaurantLocation: CLLocation!
    var pricesLabel: String!
    
    let newPin = MKPointAnnotation()

    
    

    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var nameOfRestaurant: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
       
//        let leaningTower = CLLocation (latitude: 43.723225, longitude: 10.394724)
        descriptionLabel.text = pricesLabel
        nameOfRestaurant.text = restaurantName
        centerOnLocation(location: restaurantLocation, mapView: mapView)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func centerOnLocation(location: CLLocation, mapView: MKMapView) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, 1050, 1050)
        
        newPin.coordinate = restaurantLocation.coordinate
        mapView.addAnnotation(newPin)

        
        mapView.setRegion(coordinateRegion, animated: true)
        mapView.mapType = .standard
    } 

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
