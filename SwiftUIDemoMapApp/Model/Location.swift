//
//  Location.swift
//  SwiftUIDemoMapApp
//
//  Created by Julio Collado Perez on 1/11/23.
//

import Foundation
import CoreLocation

struct Location: Identifiable, Equatable {
    static func == (lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
    
    var id: String {
        name + cityName
    }
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String
}
