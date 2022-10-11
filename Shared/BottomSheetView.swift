//
//  BottomSheetView.swift
//  tierra (iOS)
//
//  Created by Isaac Moreno on 10/10/22.
//

//import SwiftUI
//
//struct BottomSheetView: View {
//    @State var presentSheet = false
//
//    var body: some View {
//        NavigationView {
//            Button("Modal") {
//                presentSheet = true
//            }
//            .navigationTitle("Main")
//        }.sheet(isPresented: $presentSheet) {
//            Text("Detail")
////                .presentationDetents([.medium])
//        }
//    }
//}

import SwiftUI
import BottomSheet

struct BottomSheetView: View {
    @State var bottomSheetPosition: BottomSheetPosition = .absolute(325)
    
    let backgroundColors: [Color] = [Color(red: 0.2, green: 0.85, blue: 0.7), Color(red: 0.13, green: 0.55, blue: 0.45)]
    let readMoreColors: [Color] = [Color(red: 0.70, green: 0.22, blue: 0.22), Color(red: 1, green: 0.32, blue: 0.32)]
    let bookmarkColors: [Color] = [Color(red: 0.28, green: 0.28, blue: 0.53), Color(red: 0.44, green: 0.44, blue: 0.83)]
    
    var body: some View {
        //A green gradient as a background that ignores the safe area.
        LinearGradient(gradient: Gradient(colors: self.backgroundColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
        
            .bottomSheet(bottomSheetPosition: self.$bottomSheetPosition, switchablePositions: [
                .dynamicBottom,
                .absolute(325)
            ],
            headerContent: {}) {}
            .showDragIndicator(false)
            .enableContentDrag()
//            .showCloseButton()
//            .enableSwipeToDismiss()
//            .enableTapToDismiss()
    }
}

