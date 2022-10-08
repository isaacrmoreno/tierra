//
//  ContentView.swift
//  Shared
//
//  Created by Isaac Moreno on 10/6/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello :)")
        Image(systemName: "map")
            .font(.system(size: 30.0))
        MapBoxMapView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
