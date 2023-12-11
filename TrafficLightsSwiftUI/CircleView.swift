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
                .frame(width: 150, height: 150)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .opacity(isActive ? 1.0 : 0.2)
                .overlay(Circle()
                    .stroke(Color.white, lineWidth: 4)
                )
        }
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color: .red, isActive: true)
    }
}

#Preview {
    ZStack {
        Color.green
        CircleView(color: .red, isActive: true)
    }
}