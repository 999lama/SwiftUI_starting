//
//  ContentViewZstackTwo.swift
//  Views
//
//  Created by Lama Albadri on 27/03/2023.
//

import SwiftUI

struct ContentViewZstackTwo: View {
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 50)
            Rectangle()
                .fill(Color.blue)
                .frame(width:50, height: 100)
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 50, height: 50)
        }
        .border(Color.green, width: 1)    }
}

struct ContentViewZstackTwo_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewZstackTwo()
    }
}
