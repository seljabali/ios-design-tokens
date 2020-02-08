import Foundation

enum VerticalSpacingItems: Int, CaseIterable {
    case xxs, xs, s, m, l, xl, xl2;
    
    var spacingValue: Int {
        switch self {
        case .xxs:
            return VerticalSpacings.xxs
        case .xs:
            return VerticalSpacings.xs
        case .s:
            return VerticalSpacings.s
        case .m:
            return VerticalSpacings.m
        case .l:
            return VerticalSpacings.l
        case .xl:
            return VerticalSpacings.xl
        case .xl2:
            return VerticalSpacings.xl2
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
