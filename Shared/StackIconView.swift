//
//  StackIconView.swift
//  tierra (iOS)
//
//  Created by Isaac Moreno on 10/9/22.
//

import SwiftUI

struct StackIconView : View {
    var body: some View {
            Button(action: {
                print("Button pressed")
            }) {
                Image(systemName: "square.stack.3d.up")
                    .foregroundColor(.black)
                    .font(.system(size: 25))
                    .padding(5)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black, lineWidth: 2))
                    .offset(x: 150, y: -320)
            }.background(.white)
    }
}

