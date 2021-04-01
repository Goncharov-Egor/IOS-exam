//
//  Point.swift
//  MapKitDirection
//
//  Created by Егор Гончаров on 30.03.2021.
//  Copyright © 2021 AppCoda. All rights reserved.
//

import Foundation

class Point {
    var name = ""
    var location = ""
    var image = ""
    var type = ""
    
    
    init(name: String, location: String) {
        self.name = name
        self.location = location
        self.image = "point.jpg"
        self.type = "Your point"
    }
}

