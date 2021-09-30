//
//  Landmark.swift
//  Landmarks
//
//  Created by Danh Tu on 30/09/2021.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coodinates: Coodinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coodinates.latitude, longitude: coodinates.longitude)
    }
    
    struct Coodinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
