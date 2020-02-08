import Foundation

enum CornerRadiusItems: Int, CaseIterable {
    case xxs, xs, s, m, l;
    
    var radiusValue: Int {
        switch self {
        case .xxs:
            return CornerRadius.xxs
        case .xs:
            return CornerRadius.xs
        case .s:
            return CornerRadius.s
        case .m:
            return CornerRadius.m
        case .l:
            return CornerRadius.l
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
        }
    }
}
