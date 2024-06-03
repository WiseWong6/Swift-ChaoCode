//
//  Foods.swift
//  ChaoCode-FoodPicker
//
//  Created by Wise Wong on 2024/6/3.
//

import Foundation
import SwiftUI

struct Foods{
    var foods = ["冻干","猫粮","猫条","水","没得吃","鸡蛋黄","牛肉","三文鱼","秋刀鱼","鸡胸肉","蓝莓","草莓","苹果","燕麦","豆腐","胡萝卜","玉米",]
    var randomFood :String?
    
    mutating func randomFoodSelect(){
        let randomIndex = Int.random(in: 0..<foods.count)
        randomFood = foods[randomIndex]
    }
}


