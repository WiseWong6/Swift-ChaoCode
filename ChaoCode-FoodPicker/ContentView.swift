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
    //重新初始化
    var body: some View {
        VStack {
            Image("heliotrope")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fit/*@END_MENU_TOKEN@*/)
            
            Text(randomFood ?? "小葵今天吃什莫❓❓")
                .font(.largeTitle)
                .bold()
                .kerning(2.0)
            Button(action: {
                self.randomFoodSelect()
            }, label: {
                Image(systemName: "person.crop.circle.fill.badge.questionmark")
                Text("问问 11 🐷")
                    .bold()
            }).buttonStyle(.bordered).font(.title2)
        }
        .padding()
    }
    
    func randomFoodSelect(){
        let randomIndex = Int.random(in: 0..<foods.count)
        if (randomIndex >= 0 ){
                randomFood = foods[randomIndex]
        }
    }
}

#Preview {
    ContentView()
}
