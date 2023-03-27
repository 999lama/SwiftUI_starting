//
//  ContentView.swift
//  Views
//
//  Created by Lama Albadri on 27/03/2023.
//

import SwiftUI

struct FormContentView: View {
    let colors = ["black", "purple", "red", "white", "gray", "yellow", "green"]
    @State private var selectedColor: String = "red"
    
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Text("Section")
                        .multilineTextAlignment(.leading)
                        .font(.subheadline.bold())
                }
                Group {
                    ForEach(1..<11) { number in
                        Text("Row \(number)")
                    } .font(.caption.bold())
                }
                
                Section {
                    Picker("Select a color", selection: $selectedColor) {
                        ForEach(colors, id: \.self) {
                            Text($0)
                        }
                    }
                } header: {
                    Text("Pick you fav color")
                }
            }
            .navigationTitle("Swift UI")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FormContentView()
    }
}
