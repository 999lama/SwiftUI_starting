//
//  ContentViewFour.swift
//  Views
//
//  Created by Lama Albadri on 27/03/2023.
//

import SwiftUI

struct ContentViewZstack: View {
    
    let colors: [Color] =
        [.red, .orange, .yellow, .green, .blue, .purple]
    var body: some View {
        ZStack {
               ForEach(0..<colors.count) {
                   Rectangle() //Circle()
                       .fill(colors[$0])
                       .frame(width: 100, height: 100)
                       .offset(x: CGFloat($0) * 10.0,
                               y: CGFloat($0) * 10.0)
               }
           }
    }
}

struct ContentViewFour_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewZstack()
    }
}
