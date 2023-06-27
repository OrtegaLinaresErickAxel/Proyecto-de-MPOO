//
//  LacationViewModel.swift
//  New MPOO PROJECT
//
//  Created by alumno on 23/06/23.
//
import MapKit
import Foundation
import CoreLocation

final class LocationViewModel: NSObject, ObservableObject{
    private struct DefaultRegion{
        static let latitude = 19.3215473
        static let longitude = -99.1849188
    }
    private struct Span{
        static let delta = 0.1
    }
    
    @Published var userHasLocation: Bool = false
    @Published var userLocation: MKCoordinateRegion = .init()
    private let locationManager: CLLocationManager = .init()
    
    override init(){
        super.init()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        locationManager.delegate = self
        userLocation = .init(center: .init(latitude: DefaultRegion.latitude, longitude: DefaultRegion.longitude), span: .init(latitudeDelta: Span.delta, longitudeDelta: Span.delta))
    }
    func checkUserLocation(){
        let status = locationManager.authorizationStatus
        switch status {
        case .notDetermined, .restricted, .denied:
            userHasLocation = false
        case .authorizedAlways, .authorizedWhenInUse:
            userHasLocation = true
        @unknown default:
            print("Unhandled state")
        }
    }
}

extension LocationViewModel: CLLocationManagerDelegate{
    func locationManager(_ manager:CLLocationManager, didUpdateLocations locations: [CLLocation]){
        guard let location = locations.last else { return }
        print("Location \(location)")
        userLocation = .init(center: location.coordinate, span: .init(latitudeDelta: Span.delta, longitudeDelta: Span.delta))
        
    }
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        checkUserLocation()
    }
}
