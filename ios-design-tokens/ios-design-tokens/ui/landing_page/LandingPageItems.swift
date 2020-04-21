import Foundation
import UIKit

public enum LandingPageItems: Int, CaseIterable {
    case Spacings, TextSizes, CornerRadiuses, LetterSpacings, Colors;
    
    public var title: String {
        switch self {
        case .Spacings:
            return Strings.Spacings
        case .TextSizes:
            return Strings.TextAppearances
        case .CornerRadiuses:
            return Strings.CornerRadiuses
        case .LetterSpacings:
            return Strings.LetterSpacings
        case .Colors:
            return Strings.Colors
        }
    }

     public var image: UIImage {
         switch self {
         case .Spacings:
            return UIImage(named: Images.HorizontalSpacing)!
         case .TextSizes:
             return  UIImage(named: Images.TextSize)!
         case .CornerRadiuses:
             return  UIImage(named: Images.CornerRadius)!
         case .LetterSpacings:
             return  UIImage(named: Images.LetterSpacing)!
        case .Colors:
            return  UIImage(named: Images.Colors)!
         }
     }

}
