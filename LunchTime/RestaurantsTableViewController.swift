//
//  RestaurantsTableViewController.swift
//  LunchTime
//
//  Created by David Hidary on 8/3/17.
//  Copyright © 2017 Upperline Code. All rights reserved.
//

import UIKit
import MapKit

class RestaurantsTableViewController: UITableViewController {


    var asianRestaurants: [String]!
    var americanRestaurants: [String]!
    var mexicanRestaurants: [String]!
    var italyRestaurants: [String]!

    
    var foodData = Food()
    
    var foodPicker : Int!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        if foodPicker == 0 {
            
            return asianRestaurants.count
        }
        else if foodPicker == 1 {
            
            return americanRestaurants.count
        }
        else if foodPicker == 2 {
            
            return mexicanRestaurants.count
        }
        else {
        return italyRestaurants.count
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "restaurantCell", for: indexPath)

        // Configure the cell...
        if foodPicker == 0 {
            
            cell.textLabel?.text = asianRestaurants[indexPath.row]
            return cell
        }
        else if foodPicker == 1 {
            
            cell.textLabel?.text = americanRestaurants[indexPath.row]
            return cell
        }
        else if foodPicker == 2 {
            
            cell.textLabel?.text = mexicanRestaurants[indexPath.row]
            return cell        }
        else {
            cell.textLabel?.text = italyRestaurants[indexPath.row]
            return cell        }


    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "foodDetail" {
            
            let selectedCell = sender as? UITableViewCell
            
            if let indexPath = tableView.indexPath(for: selectedCell!)  {
                if let DetailViewController = segue.destination as?
                    DetailViewController{
                    
                    
                    if foodPicker == 0 {
                        
                        DetailViewController.restaurantName = asianRestaurants[indexPath.row]
                        DetailViewController.restaurantLocation = foodData.asianLocations[indexPath.row]
                        DetailViewController.pricesLabel = foodData.asianPrice[indexPath.row]
                        
                        
                        
 
                    }
                    else if foodPicker == 1 {
                        
                        DetailViewController.restaurantName = americanRestaurants[indexPath.row]
                        DetailViewController.restaurantLocation = foodData.americanLocations[indexPath.row]
                        DetailViewController.pricesLabel = foodData.italianPrice[indexPath.row]


                    }
                    else if foodPicker == 2 {
                        
                        DetailViewController.restaurantName = mexicanRestaurants[indexPath.row]
                        DetailViewController.restaurantLocation = foodData.spamexLocations[indexPath.row]
                        DetailViewController.pricesLabel = foodData.americanPrice[indexPath.row]

                    }
                    else {
                        
                        DetailViewController.restaurantName = italyRestaurants[indexPath.row]
                        DetailViewController.restaurantLocation = foodData.italianLocations[indexPath.row]
                        DetailViewController.pricesLabel = foodData.spamexPrice[indexPath.row]
                    }
            
                    
                    
                }
                
            }
        }
    }

    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
