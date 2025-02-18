import SwiftUI

struct DayContent: View {
    var time: String
    var temp: Int

    var weatherSymbol: String {
        if temp < 32 {
            return "snowflake"
        } else if temp < 50 {
            return "cloud.rain.fill"
        } else if temp < 70 {
            return "cloud.sun.fill"
        } else {
            return "sun.max.fill"
        }
    }

    var body: some View {
        VStack(alignment: .center) {
            Text(time)
                .foregroundStyle(.white)
            Image(systemName: weatherSymbol)
                .resizable()
                .frame(width: 30, height: 30)
                .foregroundStyle(.white)
            
            Text("\(temp)°")
                .foregroundStyle(.white)
                .font(.system(size: 20))
        }
    }
}


