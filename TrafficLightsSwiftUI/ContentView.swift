//
//  ContentView.swift
//  TrafficLightsSwiftUI
//
//  Created by Andrey Kovalev on 12.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var ColorsActive = [true, false, false]
    
    var body: some View {
        ZStack {
            Color.black
            
            VStack {
                ZStack {
                    Color(.secondarySystemFill)
                        .frame(width: 200, height: 500)
                        .cornerRadius(10)
                    VStack {
                        CircleView(color: .systemRed, isActive:
                                    ColorsActive[0])
                        CircleView(color: .systemYellow, isActive:
                                    ColorsActive[1])
                        CircleView(color: .systemGreen, isActive:
                                    ColorsActive[2])
                    }
                }
                .padding()
                
                Spacer()
                
                Button(action: { self.changeActiveColor() }) {
                    Text("Next Color")
                        .fontWeight(.bold)
                        .font(.title)
                        .padding()
                        .background(Color(UIColor.systemGray))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()
            }
        }
    }
    
    private func changeActiveColor() {
        for index in 0 ..< ColorsActive.count {
            if ColorsActive[index] == true {
                ColorsActive[index].toggle()
                if index + 1 < ColorsActive.count {
                    ColorsActive[index + 1].toggle()
                } else {
                    ColorsActive[0].toggle()
                }
                return
            }
        }
        
    }
}
    
#Preview {
    ContentView()
}
