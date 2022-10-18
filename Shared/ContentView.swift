//
//  ContentView.swift
//  Shared
//
//  Created by Isaac Moreno on 10/6/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            MapBoxMapView()
            StackIconView()
//            MenuView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
