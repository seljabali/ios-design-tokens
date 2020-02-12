import Foundation
import UIKit

enum ColorItems: Int, CaseIterable {
    case darkBlue, blue, aqua, gainsboro, yellow;
    
    var colorValue: UIColor {
        switch self {
        case .darkBlue:
            return PresetColors.darkBlue
        case .blue:
            return PresetColors.blue
        case .aqua:
            return PresetColors.aqua
        case .gainsboro:
            return PresetColors.gainsboro
        case .yellow:
            return PresetColors.yellow
        }
    }
    
    var colorHexValue: String {
        switch self {
        case .darkBlue:
            return PresetColors.darkBlue.hexString
        case .blue:
            return PresetColors.blue.hexString
        case .aqua:
            return PresetColors.aqua.hexString
        case .gainsboro:
            return PresetColors.gainsboro.hexString
        case .yellow:
            return PresetColors.yellow.hexString
        }
    }
    
    var title: String {
        switch self {
        case .darkBlue:
            return Strings.DarkBlue
        case .blue:
            return Strings.Blue
        case .aqua:
            return Strings.Aqua
        case .gainsboro:
            return Strings.Gainsboro
        case .yellow:
            return Strings.Yellow
        }
    }
}
