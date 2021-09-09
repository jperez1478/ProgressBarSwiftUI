//
//  ContentView.swift
//  CircularProgress
//
//  Created by Jessica Perez on 9/8/21.
//

import SwiftUI

struct ContentView: View {
    //MARK: -Properties
    @State var progressValue: Float = 0.0
    
    
    
    //MARK: -Body
    var body: some View {
        ZStack {
            Color.yellow
                .opacity(0.1)
                .edgesIgnoringSafeArea(.all)
            VStack {
                //wrapping progressbar view
                ProgressBar(progress: self.$progressValue)
                    .frame(width: 150.0, height: 150.0)
                    .padding(40.0)
                //button for increment 
                Button(action: {
                    self.incrementProgress()
                }) {
                    HStack {
                        Image(systemName: "plus.rectangle.fill")
                        Text("Increment")
                    }
                    .padding(15.0)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15.0)
                            .stroke(lineWidth: 2.0)
                    )
                }
                
                Spacer()
            }
            
        }
    }
    
    func incrementProgress() {
        let randomValue = Float([0.012,0.022,0.034,0.016,0.11].randomElement()!)
        self.progressValue += randomValue
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
