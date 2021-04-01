//
//  AddingViewController.swift
//  MapKitDirection
//
//  Created by Егор Гончаров on 30.03.2021.
//  Copyright © 2021 AppCoda. All rights reserved.
//
import UIKit

class AddingViewController: UIViewController {
    
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var adress: UITextField!
    
    @IBAction func add(_ sender: Any) {
        if !name.text!.isEmpty && !adress.text!.isEmpty {
            
            if let restTVC = restTVC {
                let pt = Point(name: name.text!, location: adress.text!)
                restTVC.points.append(pt)
                
            }
        }
        print(restTVC!.points.count) 
    }
    
    var restTVC: RestaurantTableViewController?
    
    
}
