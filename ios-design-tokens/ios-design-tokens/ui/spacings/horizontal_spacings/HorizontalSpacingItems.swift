import Foundation

enum HorizontalSpacingsItems: Int, CaseIterable {
    case xxs, xs, s, m, l, xl, xl2;
    
    var spacingValue: Int {
        switch self {
        case .xxs:
            return HorizontalSpacings.xxs
        case .xs:
            return HorizontalSpacings.xs
        case .s:
            return HorizontalSpacings.s
        case .m:
            return HorizontalSpacings.m
        case .l:
            return HorizontalSpacings.l
        case .xl:
            return HorizontalSpacings.xl
        case .xl2:
            return HorizontalSpacings.xl2
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
