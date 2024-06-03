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
                .aspectRatio(contentMode: .fit)
            Text(randomFood ?? "小葵今天吃什莫❓❓")
                .font(.largeTitle)
                .kerning(2.0)
            buttonView
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(Color(.secondarySystemBackground))
        .bold()
        .padding()
        .animation(.easeInOut, value: randomFood)
    }
    
    var buttonView: some View{
        VStack{
            buttonAdjust(by:1,symbol: "person.crop.circle.fill.badge.questionmark" ,txt: randomFood == .none ? "问问 11 🐷" : "换一个")
            .buttonStyle(.borderedProminent)
            buttonAdjust(by:0,symbol: "arrow.clockwise.circle.fill" ,txt: "重头来过")
            .buttonStyle(.bordered)
        }
    }
    
    func buttonAdjust(by def :Int,symbol:String,txt:String) -> some View{
        Button(action: {
            if def == 1{
                self.randomFoodSelect()
            }else{
                randomFood = .none
            }
            
        }, label: {
            Image(systemName: symbol)
            Text(txt).frame(width:120)
        })
        .buttonBorderShape(.capsule)
        .controlSize(.large)
        .font(.title2)
    }
    
    func randomFoodSelect(){
        let randomIndex = Int.random(in: 0..<foods.count)
        randomFood = foods[randomIndex]
        
    }
}

#Preview {
    ContentView()
}
