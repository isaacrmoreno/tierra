//
//  StackIconView.swift
//  tierra (iOS)
//
//  Created by Isaac Moreno on 10/9/22.
//

import SwiftUI

//class MenuToggle: ObservableObject {
//    @Published var menuIsVisible: Bool = false
//}

struct StackIconView: View {
//    @StateObject var menuToggle = MenuToggle()
//    @State private var menuIsVisible: Bool = false
    var body: some View {
        Button(action: { }) {
            Image(systemName: "square.stack.3d.up")
                .foregroundColor(.black)
                .font(.system(size: 25))
                .padding(5)
        }
        .background(.white)
        .cornerRadius(10)
        .overlay(RoundedRectangle(cornerRadius: 10)
            .stroke(.black, lineWidth: 1))
        .offset(x: 150, y: -320)
//        let _ = print(menuIsVisible)
    }
}

struct StackIconView_Previews: PreviewProvider {
    static var previews: some View {
        StackIconView()
    }
}
