//
//  MenuIconView.swift
//  tierra (iOS)
//
//  Created by Isaac Moreno on 10/10/22.
//

import SwiftUI

struct MenuIconView: View {
    var body: some View {
        Button(action: {}) {
            Image(systemName: "car.circle")
                .foregroundColor(.black)
                .font(.system(size: 25))
                .padding(.horizontal)
                .padding(.vertical, 5)
        }
        .background(.white)
        .cornerRadius(10)
        .overlay(RoundedRectangle(cornerRadius: 10)
            .stroke(.black, lineWidth: 2))
    }
}

struct MenuIconView_Previews: PreviewProvider {
    static var previews: some View {
        MenuIconView()
    }
}
