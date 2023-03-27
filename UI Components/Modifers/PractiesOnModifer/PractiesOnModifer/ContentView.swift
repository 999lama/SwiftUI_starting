//
//  ContentView.swift
//  PractiesOnModifer
//
//  Created by Lama Albadri on 27/03/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Text("")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.indigo)
                .blur(radius: 40)
            VStack(alignment: .center, spacing: 20) {
                Text("Hello, world!")
                    .font(.largeTitle.weight(.heavy))
                    .foregroundColor(.white)
                    .blur(radius: 10)
                    .padding(.vertical, 100)
                Text("Hello")
                    .font(.system(.largeTitle))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, maxHeight: 250)
                    .background(.black)
                    .padding(.horizontal, 20)
                    .cornerRadius(20)
                    .shadow(radius: 10)
                
                HStack(spacing: 20) {
                    Image(systemName: "house")
                    Image(systemName: "house.fill")
                } .frame(width: 90, height: 40)
                    .background(.white)
                    .foregroundColor(.blue)
                    .cornerRadius(15)
                    .shadow(radius: 10)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
