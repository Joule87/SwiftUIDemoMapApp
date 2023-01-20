//
//  LocationsViewModel.swift
//  SwiftUIDemoMapApp
//
//  Created by Julio Collado Perez on 1/12/23.
//

import Foundation
import MapKit
import SwiftUI

class LocationsViewModel: ObservableObject {
    private let span = MKCoordinateSpan.init(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    @Published var locations: [Location]
    @Published var mapLocation: Location {
        didSet {
            update(mapRegion: mapLocation)
        }
    }
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    
    @Published var showLocationsList: Bool = false
    
    init() {
        self.locations = LocationsDataService.locations
        self.mapLocation = LocationsDataService.locations.first!
        update(mapRegion: LocationsDataService.locations.first!)
    }
    
    private func update(mapRegion with: Location) {
        withAnimation(.easeOut) {
            self.mapRegion = MKCoordinateRegion(center: self.mapLocation.coordinates, span: span)
        }
    }
    
    func toogleLocationList() {
        withAnimation(.easeInOut) {
            showLocationsList = !showLocationsList
        }
    }
    
    func showNextLocation(location: Location) {
        withAnimation {
            mapLocation = location
            showLocationsList = false
        }
    }
    
    func showNextLocation() {
        guard let indexOfCurrentLocation = locations.firstIndex(of: mapLocation) else {
            return
        }
        let nextIndexLocation = indexOfCurrentLocation + 1
        if !locations.indices.contains(nextIndexLocation), let firstLocation = locations.first  {
            showNextLocation(location: firstLocation)
            return
        }
        let nextLocation = locations[nextIndexLocation]
        showNextLocation(location: nextLocation)
    }
}
