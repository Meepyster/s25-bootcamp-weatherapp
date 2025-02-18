//
//  ContentView.swift
//  WeatherApp
//
//  Created by Ian Forlemu on 2/15/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("wallpap")
                .resizable()
                .frame(width:450, height: 910)

            VStack(){
                ScrollView(.vertical, showsIndicators: false){
                    Spacer()
                        .frame(height:100)
                    LocTemp(temp: 70, loc: "Chapel Hill")
                    Spacer()
                        .frame(height: 40)
                    TopBox(startTime: 10)
                    Spacer()
                        .frame(height: 20)
                    BottomBox()
                    Spacer()
                        .frame(height:100)
                }
            }
                
        }
    }
}

#Preview {
    ContentView()
}
