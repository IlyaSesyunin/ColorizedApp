//
//  Color.swift
//  ColorizedApp
//
//  Created by Илья Сесюнин on 11.07.2022.
//

import Foundation
import UIKit

struct Color {
    var red: Float
    var green: Float
    var blue: Float
    
    var getColor: UIColor {
        UIColor(
            red: CGFloat(red),
            green: CGFloat(green),
            blue: CGFloat(blue),
            alpha: 1.00
        )
    }
}
