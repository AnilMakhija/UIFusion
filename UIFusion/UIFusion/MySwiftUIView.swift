//
//  MySwiftUIView.swift
//  UIFusion
//
//  Created by Anil on 01/05/25.
//

import SwiftUI

struct MySwiftUIView: View {
    @State private var timerRunning = false
    @State private var counter = 0
    var myText: String
    init() {
        // Perform setup or initialization here
        myText = "Welcome to SwiftUI!"
    }
    
    var body: some View {
        Text(myText)
        ZStack {
            // Blue background occupying the entire screen
            Color.purple.edgesIgnoringSafeArea(.all)
            VStack{
                Text("Timer:\(counter)")
                    .font(.title)
                Spacer()
            }
            .onAppear{
                // Code executed when view appears
                startTimer()
            }
            .onDisappear{
                // Code executed when view disappears
                stopTimer()
            }
            // Button to increment counter value
            Button("Multiply 2") {
                // Updating @State property triggers view update
                counter *= 2
            }
        }
        
    }
    func startTimer() {
        timerRunning = true
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            counter += 1
        }
    }
    func stopTimer() {
        timerRunning = false
    }
}


#Preview {
    MySwiftUIView()
}
