//
//  ContentViewThree.swift
//  Views
//
//  Created by Lama Albadri on 27/03/2023.
//

import SwiftUI

struct ContentViewThree: View {
    var body: some View {
        VStack {
            Text("This is a wide text element")
                .font(.body)
                .frame(width: 200, height: 50, alignment: .leading)
                .lineLimit(1)
                .allowsTightening(true)

            Text("This is a wide text element")
                .font(.body)
                .frame(width: 200, height: 50, alignment: .leading)
                .lineLimit(1)
                .allowsTightening(false)
        }
    }
}

struct ContentViewThree_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewThree()
    }
}
