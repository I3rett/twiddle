//
//  ContentView.swift
//  twiddle WatchKit Extension
//
//  Created by Brett Cloke on 06/03/2022.
//

import SwiftUI
import Combine
import WatchKit
struct ContentView: View {
    var facts: [Note] = honeymoonData
    @State var rotationValue = 0.0
    @State var scroll: Double = 0.0
    @State var scrolling: Bool = false
    var body: some View {
        VStack {
            Image(facts[Int(scroll)].imageName)
                .resizable()
                .scaledToFit()
                .listRowPlatterColor(.clear)
                .focusable(true)
                .digitalCrownRotation($scroll, from: 0, through:16, by: 1, sensitivity: .low, isContinuous: false, isHapticFeedbackEnabled: true)
        }.navigationTitle("twiddle")
            .navigationBarTitleDisplayMode(.inline)
        
        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
