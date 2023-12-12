//
//  CircleView.swift
//  TrafficLightsSwiftUI
//
//  Created by Andrey Kovalev on 12.12.2023.
//

import SwiftUI

struct CircleView: View {
    let color: UIColor
    let isActive: Bool
    
    var body: some View {
        ZStack {
            Color(color)
                .frame(width: 150)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .opacity(isActive ? 1.0 : 0.1)
                .overlay(Circle()
                    .stroke(Color.white, lineWidth: 4)
                )
        }
    }
}

#Preview {
    ZStack {
        Color.green
        CircleView(color: .red, isActive: true)
    }
}
