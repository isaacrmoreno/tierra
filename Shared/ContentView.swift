//
//  ContentView.swift
//  Shared
//
//  Created by Isaac Moreno on 10/6/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image(systemName: "square.stack.3d.up")
            .font(.system(size: 28.0))
            .padding(5)
            .cornerRadius(5)
            .overlay(RoundedRectangle(cornerRadius: 10)
            .stroke(Color.black, lineWidth: 2))
        MapBoxMapView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
