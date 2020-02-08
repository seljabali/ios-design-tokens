import Foundation

enum LetterSpacingItems: Int, CaseIterable {
    case xxs, xs, s, m, l, xl, xl2;
    
    var spacingValue: Float {
        switch self {
        case .xxs:
            return LetterSpacings.xxs
        case .xs:
            return LetterSpacings.xs
        case .s:
            return LetterSpacings.s
        case .m:
            return LetterSpacings.m
        case .l:
            return LetterSpacings.l
        case .xl:
            return LetterSpacings.xl
        case .xl2:
            return LetterSpacings.xl2
        }
    }
    
    var title: String {
        switch self {
        case .xxs:
            return Strings.XXS
        case .xs:
            return Strings.XS
        case .s:
            return Strings.S
        case .m:
            return Strings.M
        case .l:
            return Strings.L
        case .xl:
            return Strings.XL
        case .xl2:
            return Strings.XL2
        }
    }
}
