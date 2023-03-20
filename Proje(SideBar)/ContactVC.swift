//
//  ContactVC.swift
//  Proje(SideBar)
//
//  Created by Tahir Bayraktar on 15.03.2023.
//

import UIKit
import MapKit

class ContactVC: UIViewController,MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    let regionRadius: CLLocationDistance = 500
    let initialLocation = CLLocationCoordinate2D(latitude: 41.0204012, longitude: 28.8888095)
    let mapLocation = CLLocation(latitude: 41.0204012, longitude: 28.8888095)
    let annotation = MKPointAnnotation()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       centerMapOnLocation(location: mapLocation)
        annotation.title = "ID3"
        annotation.subtitle = "id3"
        annotation.coordinate = initialLocation
        mapView.addAnnotation(annotation)
        
    }
    
    func centerMapOnLocation(location: CLLocation) {
            let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
            mapView.setRegion(coordinateRegion, animated: true)
        }
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        
        CLGeocoder().reverseGeocodeLocation(mapLocation) { Placemarks, error in
            
            if let placemark = Placemarks{
                if placemark.count>0{
                    let newPlacemark = MKPlacemark(placemark: placemark[0])
                    let item = MKMapItem(placemark: newPlacemark)
                    item.name = "ID3"
                    let launchOptions = [MKLaunchOptionsDirectionsModeKey:MKLaunchOptionsDirectionsModeDriving]
                    item.openInMaps(launchOptions: launchOptions)
                    
                }
                
                
            }
        }
    }
    
    @IBAction func linkedinURLClicked(_ sender: Any) {
        
        UIApplication.shared.open(URL(string: "https://www.linkedin.com/company/information-design-three/")!)
    }
    
}
