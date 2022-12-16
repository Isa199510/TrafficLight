//
//  LightView.swift
//  TrafficLight
//
//  Created by Иса on 15.12.2022.
//

import SwiftUI

struct LightView: View {
    let color: Color
    let isOne: Bool
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 150, height: 150)
            .opacity(isOne ? 1 : 0.3)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

struct LightView_Previews: PreviewProvider {
    static var previews: some View {
        LightView(color: .red, isOne: false)
            .background(.black)
    }
}
