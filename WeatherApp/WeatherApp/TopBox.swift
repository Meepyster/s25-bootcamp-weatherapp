//
//  TopBox.swift
//  WeatherApp
//
//  Created by Ian Forlemu on 2/17/25.
//

import SwiftUI
import Foundation

struct TopBox: View {
    var startTime: Int
    var body: some View {
        ZStack(alignment: .center){
            RoundedRectangle(cornerRadius: 20)
                .frame(width:350, height:150)
                .foregroundStyle(Color(red: 0.10, green: 0.55, blue: 1))
                .opacity(0.34)
            VStack(alignment:.leading){
                HStack{
//                    Image(systemName: "clock")
//                        .resizable()
//                        .frame(width:24, height:24)
//                        .foregroundStyle(.white)
                    Text("rip bozo you gonna die bruv")
                        .foregroundStyle(.white)
                    
                }
                
                    .padding(.leading,18)
                HStack{
                    RoundedRectangle(cornerRadius:1)
                        .frame(width:310, height:1)
                        .foregroundStyle(Color.white)
                        .opacity(0.2)
                }
                .padding(.leading,18)
                HStack{
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing:10){
                            Spacer()
                                .frame(width:11)
                            DayContent(time:"Now", temp:70)
                            Spacer()
                                .frame(width:5)
                            ForEach(10..<24, id: \.self){hour in
                                DayContent(time:String(hour), temp:Int.random(in: 60...75))
                                Spacer()
                                    .frame(width:5)
                            }
                            ForEach(1..<10, id: \.self){hour in
                                DayContent(time:String(hour), temp:Int.random(in: 29...55))
                                Spacer()
                                    .frame(width:5)
                            }
                        }.defaultScrollAnchor(UnitPoint.trailing)
                    }
                }
            }.frame(width:350, height:150)
        }
    }
}


