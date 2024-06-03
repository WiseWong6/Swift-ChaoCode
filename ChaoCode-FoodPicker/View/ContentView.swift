//
//  ContentView.swift
//  ChaoCode-FoodPicker
//
//  Created by Wise Wong on 2024/6/3.
//

import SwiftUI
import Foundation

struct ContentView: View {    
    @State private var foods = Foods()
    
    var body: some View {
        VStack (alignment:.center){
            Image(foods.randomFood == "没得吃" ? "angryCat" : "heliotrope")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width:350.0,height: 400.0)
            
            Text(foods.randomFood ?? "小葵今天吃什莫❓❓")
            .font(.largeTitle)
            .kerning(2.0)
            
            buttonView
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(Color(.secondarySystemBackground))
        .bold()
        .padding()
        .animation(.easeInOut, value: foods.randomFood)
    }
    
    var buttonView: some View{
        HStack{
            buttonAdjust(by:0,symbol: "arrow.clockwise.circle.fill" ,txt: "重头来过")
            .buttonStyle(.bordered)
            buttonAdjust(by:1,symbol: "person.crop.circle.fill.badge.questionmark" ,txt: foods.randomFood == .none ? "问问 11 🐷" : "换一个")
            .buttonStyle(.borderedProminent)

        }
    }
    
    func buttonAdjust(by def :Int,symbol:String,txt:String) -> some View{
        Button(action: {
            if def == 1{
                self.foods.randomFoodSelect()
            }else{
                foods.randomFood = .none
            }
            
        }, label: {
            Image(systemName: symbol)
            Text(txt).frame(width:120)
        })
        .buttonBorderShape(.capsule)
        .controlSize(.large)
//        .font(.title2)
    }
    

}

#Preview {
    ContentView()
}
