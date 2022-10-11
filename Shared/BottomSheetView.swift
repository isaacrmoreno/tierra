//
//  BottomSheetView.swift
//  tierra (iOS)
//
//  Created by Isaac Moreno on 10/10/22.
//

import SwiftUI

struct BottomSheetView: View {
    @State var presentSheet = false

    var body: some View {
        NavigationView {
            Button("Modal") {
                presentSheet = true
            }
            .navigationTitle("Main")
        }.sheet(isPresented: $presentSheet) {
            Text("Detail")
//                .presentationDetents([.medium])
        }
    }
}

