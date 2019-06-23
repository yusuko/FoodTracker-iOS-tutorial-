//
//  Meal.swift
//  MyApp2
//
//  Created by 安西佑介 on 2019/06/23.
//  Copyright © 2019 安西佑介. All rights reserved.
//

import UIKit
class Meal {
    
    // MARK: properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    //MARK: initialization
    init?(name: String, photo: UIImage?, rating: Int) {
        // Initialization should fail if there is no name or if the rating is negative.
        if name.isEmpty || rating < 0 {
            return nil
        }
        self.name = name
        self.photo = photo
        self.rating = rating
    }
}
