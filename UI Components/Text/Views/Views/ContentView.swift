//
//  ContentView.swift
//  Views
//
//  Created by Lama Albadri on 27/03/2023.
//

import SwiftUI

struct FormContentView: View {
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
