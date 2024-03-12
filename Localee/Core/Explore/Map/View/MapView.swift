//
//  MapView.swift
//  Localee
//
//  Created by Csiszér Dominik on 12/03/2024.
//

import SwiftUI
import MapKit

struct ServiceAnnotation: Identifiable {
    var id: String
    var title: String?
    var coordinate: CLLocationCoordinate2D
    var service: Service
    
    init(id: String, title: String? = nil, coordinate: CLLocationCoordinate2D, service: Service) {
        self.id = id
        self.title = title
        self.coordinate = coordinate
        self.service = service
    }
}

struct MapView: View {
    @State private var searchText = ""
    @State private var annotations = [ServiceAnnotation]()
    
    @StateObject var viewModel = MapViewModel()
    
    var body: some View {
        VStack {
            Map(coordinateRegion: $viewModel.mapRegion, showsUserLocation: true, annotationItems: annotations) { annotation in
                MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: annotation.service.location.latitude, longitude: annotation.service.location.longitude)) {
                    Image(systemName: "mappin.circle.fill")
                        .frame(width: 20, height: 20)
                }
            }
            .edgesIgnoringSafeArea(.top)
            .onAppear(perform: {
                viewModel.checkIfLocationIsEnabled()
                loadAnnotations()
            })
            .overlay(alignment: .top) {
                TextField("Search for a location...", text: $searchText)
                    .font(.subheadline)
                    .padding(12)
                    .background(.white)
                    .padding()
                    .shadow(radius: 10)
            }
            .onSubmit(of: .text) {
                print("DEBUG: Search for locations with query \(searchText)")
            }
            .mapControls() {
                MapUserLocationButton()
            }
        }
    }
    
    private func loadAnnotations() {
        let services: [Service] = services
        for service in services {
            let location = CLLocationCoordinate2D(latitude: service.location.latitude, longitude: service.location.longitude)
            let annotation = ServiceAnnotation(id: NSUUID().uuidString, title: service.name, coordinate: location, service: service)
            annotations.append(annotation)
        }
    }
}

#Preview {
    MapView()
}
