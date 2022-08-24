//
//  Fonts.swift
//  PhotoFeed
//
//  Created by Jackeline Pires De Lima on 24/08/22.
//

import UIKit

public struct UIFontWeight {
    //300
    public static let primaryLight: String = "Ubuntu-Light"
    //500
    public static let primaryMedium: String = "Ubuntu-Medium"
    //400
    public static let primaryRegular: String = "Ubuntu-Regular"
    //700
    public static let primaryBold: String = "Ubuntu-Bold"
}

public enum UIFontStyle {
    case f11PrimaryRegular
    case f13PrimaryRegular
    case f14PrimaryRegular
    case f14PrimaryBold
    case f15PrimaryLight
    case f16PrimaryBold
    case f16PrimaryRegular
    case f18PrimaryRegular
    case f18PrimaryMedium
    case f20PrimaryBold
    case f23PrimaryBold
    
    public var weight: String {
        switch self {
        case .f11PrimaryRegular, .f13PrimaryRegular, .f14PrimaryRegular, .f16PrimaryRegular, .f18PrimaryRegular:
            return UIFontWeight.primaryRegular
        case .f14PrimaryBold, .f16PrimaryBold, .f20PrimaryBold, .f23PrimaryBold:
            return UIFontWeight.primaryBold
        case .f15PrimaryLight:
            return UIFontWeight.primaryLight
        case .f18PrimaryMedium:
            return UIFontWeight.primaryMedium
        }
        
    }
    
    public var size: CGFloat {
        var size: CGFloat = 0
        switch self {
        case .f11PrimaryRegular:
            size = 11
        case .f13PrimaryRegular:
            size = 13
        case .f14PrimaryRegular, .f14PrimaryBold:
            size = 14
        case .f15PrimaryLight:
            size = 15
        case .f16PrimaryBold, .f16PrimaryRegular:
            size = 16
        case .f18PrimaryRegular, .f18PrimaryMedium:
            size = 18
        case .f20PrimaryBold:
            size = 20
        case .f23PrimaryBold:
            size = 23
        }
        return size
    }
    
    static func customFont(name: UIFontStyle) -> UIFont {
        guard let font = UIFont(name: name.weight, size: name.size) else {
            fatalError("Unable to initialize font '\(name.weight)' (\(name.size))")
        }
        return font
    }
}

