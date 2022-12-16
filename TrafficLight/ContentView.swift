//
//  ContentView.swift
//  TrafficLight
//
//  Created by Иса on 15.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    enum TrafficLamp {
        case red
        case yellow
        case green
    }
    
    @State var redLight: Bool = false
    @State var yellowLight: Bool = false
    @State var greenLight: Bool = false
    @State var trafficLamp: TrafficLamp = .red
    @State var titleButton = "START"
    
    var body: some View {
        
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                
                LightView(color: .red, isOne: redLight)
                LightView(color: .yellow, isOne: yellowLight)
                LightView(color: .green, isOne: greenLight)
                Spacer()
                buttonStart
            }
            .padding()
        }
    }
    
    private var buttonStart: some View {
        Button(action: { tupButton()}) {
            Text(titleButton)
                .frame(width: 150, height: 50)
                .foregroundColor(.white)
                .background(Color.blue)
                .border(.green)
                .cornerRadius(10)
        }
    }
    
    func tupButton() {
        if titleButton == "START" {
            titleButton = "NEXT"
            trafficLamp = .green
        }
        switch trafficLamp {
        case .red:
            yellowLight = true
            redLight = false
            trafficLamp = .yellow
        case .yellow:
            greenLight = true
            yellowLight = false
            trafficLamp = .green
        case .green:
            redLight = true
            greenLight = false
            trafficLamp = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
