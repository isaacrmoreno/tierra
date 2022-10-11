//
//  MapBoxMapView.swift
//  tierra (iOS)
//
//  Created by Isaac Moreno on 10/7/22.
//

import MapboxMaps
import SwiftUI
import UIKit

struct MapBoxMapView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> MapViewController {
        return MapViewController()
    }

    func updateUIViewController(_ uiViewController: MapViewController, context: Context) {}
}

class MapViewController: UIViewController {
    internal var mapView: MapView!
    override public func viewDidLoad() {
        super.viewDidLoad()
        let myResourceOptions = ResourceOptions(accessToken: "pk.eyJ1IjoiaXNhYWNtb3Jlbm8iLCJhIjoiY2w3OWs2d25kMDB4OTQydGtiMnl5YzI4NSJ9.nD4HjObLDhwdKeRQHa7kuQ")
        let cameraOptions = CameraOptions(center: CLLocationCoordinate2D(latitude: 44.944099, longitude: -123.040283), zoom: 9, pitch: 0)
        let myMapInitOptions = MapInitOptions(resourceOptions: myResourceOptions, cameraOptions: cameraOptions, styleURI: StyleURI.outdoors)
        mapView = MapView(frame: view.bounds, mapInitOptions: myMapInitOptions)
        mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(mapView)
    }
}

struct MapBoxMapView_Previews: PreviewProvider {
    static var previews: some View {
        MapBoxMapView()
    }
}
