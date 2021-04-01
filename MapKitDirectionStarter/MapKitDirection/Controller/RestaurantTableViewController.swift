//
//  RestaurantTableViewController.swift
//  MapKitDirection
//
//  Created by Simon Ng on 6/10/2016.
//  Copyright © 2016 AppCoda. All rights reserved.
//

import UIKit

class RestaurantTableViewController: UITableViewController {

    
    
    var points: [Point] = [];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    } 
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // Return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows
        return points.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        // Configure the cell...
        let point = points[indexPath.row]
        cell.textLabel?.text = point.name
        cell.detailTextLabel?.text = point.type
        cell.imageView?.image = UIImage(named: point.image)

        return cell
    }
    
    // MARK: Segue
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showMap" {
            let destinationController = segue.destination as! MapViewController
            if let indexPath = tableView.indexPathForSelectedRow {
                destinationController.point = points[indexPath.row]
            }
        }
        
        
    }
    
    @IBAction func adding(_ sender: Any) {
        let storb = UIStoryboard(name: "Main", bundle: nil)
        
        if let vc2 = storb.instantiateViewController(identifier: "AddingViewController") as? AddingViewController {
            vc2.restTVC = self
            show(vc2, sender: nil)
        }
    }
    
    @IBAction func unwindToHomeScreen(segue: UIStoryboardSegue) {
        dismiss(animated: true, completion: nil)
    }
    
}


