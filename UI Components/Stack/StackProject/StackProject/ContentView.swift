//
//  ContentView.swift
//  StackProject
//
//  Created by Lama Albadri on 27/03/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      ZStack {
            Color.black
            VStack(spacing: 20) {
                HStack(spacing:20) {
                    Image(systemName: "house")
                        .imageScale(.large)
                        .foregroundColor(.purple)
                    Image(systemName: "house.fill")
                        .imageScale(.large)
                        .foregroundColor(.purple)
                        
                }
                
                Text("Hello Home!")
                    .foregroundColor(.white)
                    .font(.largeTitle.bold())
            }
        }
      .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
