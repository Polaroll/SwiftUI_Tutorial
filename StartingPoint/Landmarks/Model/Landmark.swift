//
//  Landmark.swift
//  Landmarks
//
//  Created by Ethan Houser on 4/9/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable {
    var id:          Int
    var name:        String
    var park:        String
    var state:       String
    var description: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude:  Double
        var longitude: Double
    }
}
