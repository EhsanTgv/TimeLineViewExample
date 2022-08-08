//
//  ContentView.swift
//  TimeLineViewExample
//
//  Created by Ehsan Taghavi on 8.08.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            TimelineView(.animation) { context in
                let date = context.date
                let seconds = Calendar.current.component(.second, from: date)
                
                Circle()
                    .trim(from: 0, to: Double(seconds)/60.0)
                    .stroke(Color.blue, lineWidth: 10)
            }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 Pro")
    }
}
