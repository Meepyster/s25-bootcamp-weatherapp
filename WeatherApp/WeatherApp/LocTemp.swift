import SwiftUI
import Foundation

struct LocTemp: View {
    var temp: Int
    var loc: String
    var clearCheck: String {
        if temp < 32 {
            return "Snowing"
        } else if temp < 50 {
            return "Raining"
        }
        return "Clear"
    }
    var body: some View{
        VStack{
            Text("MY LOCATION")
                .foregroundStyle(.white)
            Text(loc)
                .font(.system(size:30))
                .foregroundStyle(.white)
            Text(String(temp)+"°")
                .font(.system(size:75))
                .foregroundStyle(.white)
            Text(clearCheck)
                .font(.system(size:18))
                .foregroundStyle(.white)
                .opacity(0.5)
            Text("H: \(Int.random(in: temp...temp+5))°  L: \(Int.random(in: temp-14...temp))°")
                .font(.system(size:20))
                .foregroundStyle(.white)
        }
    }
}
