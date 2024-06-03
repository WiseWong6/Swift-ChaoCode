//
//  ContentView.swift
//  ChaoCode-FoodPicker
//
//  Created by Wise Wong on 2024/6/3.
//

import SwiftUI
import Foundation

struct ContentView: View {
    let foods = ["冻干","猫粮","猫条","水","没得吃","鸡蛋黄","牛肉","三文鱼","秋刀鱼","鸡胸肉","蓝莓","草莓","苹果","燕麦","豆腐","胡萝卜","玉米",]
    
    @State private var randomFood :String?
    var body: some View {
        VStack (alignment:.center){
            Image("heliotrope")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fit/*@END_MENU_TOKEN@*/)
                .padding()
            
            Text(randomFood ?? "小葵今天吃什莫❓❓")
                .font(.largeTitle)
                .bold()
                .kerning(2.0)
            buttonView
        }
        .padding()
        .animation(.easeInOut, value: randomFood)
    }
    
    var buttonView: some View{
            VStack{
                Button(action: {
                    self.randomFoodSelect()
                }, label: {
                    Image(systemName: "person.crop.circle.fill.badge.questionmark")
                    Text(randomFood == .none ? "问问 11 🐷" : "换一个")
                        .bold()
                        .frame(width: 120)
                })
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
                .controlSize(.large)
                .font(.title2)
                .tint(.brown)
            
                Button(action: {
                    randomFood = .none
                }, label: {
                    Image(systemName: "arrow.clockwise.circle.fill")
                    Text("重头来过")
                        .bold()
                        .frame(width: 120)
                })
                .buttonStyle(.bordered)
                .buttonBorderShape(.capsule)
                .controlSize(.large)
                .font(.title2)
            }
    }
    
    func randomFoodSelect(){
        let randomIndex = Int.random(in: 0..<foods.count)
        randomFood = foods[randomIndex]
        
    }
}

#Preview {
    ContentView()
}
