//
//  ContentViewTwo.swift
//  Views
//
//  Created by Lama Albadri on 27/03/2023.
//

import SwiftUI

struct ContentViewTwo: View {
    @State var myTextField = ""
    var body: some View {
        HStack {
          Text("This is a long label that will be scaled to fit:")
              .lineLimit(1)
              .minimumScaleFactor(0.5)
          TextField("My Long Text Field", text: $myTextField)
        }
    }
}

struct ContentViewTwo_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewTwo()
    }
}
