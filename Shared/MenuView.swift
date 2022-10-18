//
//  MenuView.swift
//  tierra (iOS)
//
//  Created by Isaac Moreno on 10/10/22.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.orange)
                .frame(width: 300, height: 60)
                .overlay(RoundedRectangle(cornerRadius: 20.0)
                    .stroke(lineWidth: 2.0))
                .padding(.horizontal, 40)
                .offset(x: 0, y: 310)
            MenuIconView()
                .offset(x: 100, y: 310)
            MenuIconView()
                .offset(x: 0, y: 310)
            MenuIconView()
                .offset(x: -100, y: 310)
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
