//
//  WeekContent.swift
//  WeatherApp
//
//  Created by Ian Forlemu on 2/17/25.
//

import SwiftUI
import Foundation

struct WeekContent: View {
    var day: Int
    var dayOfWeek: String {
        switch day {
        case 1:
            return "Today"
        case 2:
            return "Mon"
        case 3:
            return "Tue"
        case 4:
            return "Wed"
        case 5:
            return "Thu"
        case 6:
            return "Fri"
        case 7:
            return "Sat"
        case 8:
            return "Sun"
        case 9:
            return "Mon"
        case 10:
            return "Tue"
        default:
            return "Invalid day"
        }
    }
    var temp: Int
    var highTemp: Int{
        return Int.random(in: temp+4...temp+23)
    }
    var weatherSymbol: String {
        if highTemp < 32 {
            return "snowflake"
        } else if highTemp < 50 {
            return "cloud.rain.fill"
        } else if highTemp < 70 {
            return "cloud.sun.fill"
        } else {
            return "sun.max.fill"
        }
    }
    var body: some View {
        VStack{
            HStack{
                Text(dayOfWeek)
                    .font(.system(size: 20))
                    .frame(width:55)
                    .foregroundStyle(Color.white)
                Spacer()
                    .frame(width: 20)
                Image(systemName: weatherSymbol)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundStyle(.white)
                Spacer()
                    .frame(width: 20)
                Text("\(temp)°")
                    .font(.system(size: 20))
                    .foregroundStyle(Color.white)
                    .frame(width:44)
                Spacer()
                    .frame(width: 9)
                RoundedRectangle(cornerRadius: 10)
                    .frame(width:80, height:5)
                    .foregroundStyle(LinearGradient(
                        gradient: Gradient(colors: [
                            Color(red: 0.6, green: 0.8, blue: 1.4),
                            Color(red: 1.2, green: 1, blue: 0.5)
                        ]),
                        startPoint: .leading,
                        endPoint: .trailing
                    ))
                Spacer()
                    .frame(width: 9)
                Text("\(highTemp)°")
                    .font(.system(size: 20))
                    .foregroundStyle(Color.white)
                    .frame(width:44)
            }
            RoundedRectangle(cornerRadius:1)
                .frame(width:310, height:1)
                .foregroundStyle(Color.white)
                .opacity(0.2)
        }
    }
}
