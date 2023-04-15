//
//  ContentView.swift
//  Calculator
//
//  Created by tolgahan sonmez on 14.04.2023.
//

import SwiftUI



struct ContentView: View {
    @State private var num1 = ""
    @State private var num2 = ""
    @State private var scale: CGFloat = 2.0
    private let lineargradient = LinearGradient(colors: [.cyan , .orange], startPoint: .top, endPoint: .bottom)
    
    var body: some View {
        ZStack{
            
            VStack {
                HStack{
                    Image(systemName: "heart.fill")
                        .frame(width: 50, height: 50)
                    
                        .font(Font.largeTitle)
                        .foregroundColor(Color.red)
                        .cornerRadius(5)
                        .scaleEffect(scale)
                        .onAppear {
                            withAnimation(Animation.easeInOut(duration: 1.5).repeatForever()){
                                self.scale = 1.5
                            }
                        }
                    Spacer()
                    Text("SwiftUI Calculator")
                    
                }.padding(.horizontal , 90)
                Spacer()
                HStack{
                    TextField("SwiftUI Calculator..", text: $num1)
                        .padding()
                        
                        .frame(width: 350, height: 120, alignment: .leading)
                        .font(Font.largeTitle)
                        .border(Color .black ,width: 5)
                        .background(Color.green)
                        
                }
                Spacer()
                HStack{
                    //TextField(frame: 20)
                    
                    Button(action: {}){
                        Image(systemName: "1.circle")
                    }.buttonStyle(CustomButton())
                    Button(action: {}){
                        Image(systemName: "2.circle")
                    }.buttonStyle(CustomButton())
                    Button(action: {}){
                        Image(systemName: "3.circle")
                    }.buttonStyle(CustomButton())
                    Button(action: {}){
                        Image(systemName: "divide.circle")
                    }.buttonStyle(CustomButton())
                    
                }
                HStack{
                    Button(action: {}){
                        Image(systemName: "4.circle")
                    }.buttonStyle(CustomButton())
                    Button(action: {}){
                        Image(systemName: "5.circle")
                    }.buttonStyle(CustomButton())
                    Button(action: {}){
                        Image(systemName: "6.circle")
                    }.buttonStyle(CustomButton())
                    Button(action: {}){
                        Image(systemName: "multiply.circle")
                    }.buttonStyle(CustomButton())
                }
                HStack{
                    Button(action: {}){
                        Image(systemName: "7.circle")
                    }.buttonStyle(CustomButton())
                    Button(action: {}){
                        Image(systemName: "8.circle")
                    }.buttonStyle(CustomButton())
                    Button(action: {}){
                        Image(systemName: "9.circle")
                    }.buttonStyle(CustomButton())
                    Button(action: {}){
                        Image(systemName: "plus.circle")
                    }.buttonStyle(CustomButton())
                }
                HStack{
                    Button(action: {}){
                        Image(systemName: "smallcircle.fill.circle")
                    }.buttonStyle(CustomButton())
                    Button(action: {}){
                        Image(systemName: "0.circle")
                    }.buttonStyle(CustomButton())
                    Button(action: {}){
                        Image(systemName: "equal.circle")
                    }.buttonStyle(CustomButton())
                    Button(action: {}){
                        Image(systemName: "minus.circle")
                    }.buttonStyle(CustomButton())
                }
            }
        }.background(lineargradient)

    }
    
    struct CustomButton: ButtonStyle{
        func makeBody(configuration: Configuration) -> some View {
            configuration.label.frame(width: 80 , height: 80)
            .foregroundColor(.white)
            .background(.gray)
            .font(.largeTitle)
            .cornerRadius(10)
            .shadow(color: Color(red: 0.2, green: 0.2, blue: 0.2), radius: 10, x: 0, y: 0)
            .overlay(Circle().stroke(lineWidth: 8).size(width: 55, height: 55).offset(x: 13, y: 13).opacity(0.5).foregroundColor(.secondary).blur(radius: 4))
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
