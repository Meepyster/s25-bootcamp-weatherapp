import SwiftUI


struct BottomBox: View {
    var body: some View {
        ZStack(){
            RoundedRectangle(cornerRadius:20)
                .frame(width:350, height:400)
                .foregroundStyle(Color(red: 0.10, green: 0.55, blue: 1))
                .opacity(0.34)
            VStack(alignment: .leading){
                HStack(){
                    Image(systemName: "calendar")
                    Text("10-DAY FORECAST")
                        .font(.system(size: 15))
                }
                .foregroundStyle(Color.white)
                .opacity(0.4)
                
                RoundedRectangle(cornerRadius:1)
                    .frame(width:310, height:1)
                    .foregroundStyle(Color.white)
                    .opacity(0.2)
            }
            .padding(.bottom,330)
            VStack{
                ScrollView(.vertical, showsIndicators: false){
                    Spacer()
                        .frame(height:15)
                    ForEach(1...10, id: \.self){day in
                        WeekContent(day:day, temp:Int.random(in: 20...90))
                    }
                }
                .frame(width:350, height: 350)
                .padding(.top,50)
            }
        }
    }
}
