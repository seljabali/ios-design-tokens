import Foundation

struct Spacings {
    static let quarter = 2
    static let half = 4
    static let spacing = 8
    static let double = spacing * 2             // 16
    static let triple = spacing * 3             // 24
    static let quadruple = spacing * 4          // 32
    static let quintuple = spacing * 5          // 40
    static let sextuple = spacing * 6           // 48
    static let septuple = spacing * 7           // 56
    static let octuple = spacing * 8            // 64
    static let nonuple = spacing * 9            // 72
    static let decuple = spacing * 10           // 80
    static let undecuple = spacing * 11         // 88
    static let duodecuple = spacing * 12        // 96
    static let tredecuple = spacing * 13        // 104
    static let quattuordecuple = spacing * 14   // 112
    static let quindecuple = spacing * 15       // 120
    static let sexdecuple = spacing * 16        // 128
}

struct HorizontalSpacings {
    static let xxs = Spacings.quarter
    static let xs = Spacings.half
    static let s = Spacings.spacing
    static let m = Spacings.double
    static let l = Spacings.quadruple
    static let xl = Spacings.octuple
    static let xl2 = Spacings.sexdecuple
}

struct VerticalSpacings {
    static let xxs = Spacings.quarter
    static let xs = Spacings.half
    static let s = Spacings.spacing
    static let m = Spacings.double
    static let l = Spacings.quadruple
    static let xl = Spacings.octuple
    static let xl2 = Spacings.sexdecuple
}

struct CornerRadius {
    static let xxs = 2
    static let xs = 4
    static let s = 6
    static let m = 8
    static let l = 10
}

struct LetterSpacings {
    static let xxs: Float = -1.5
    static let xs: Float = -1.0
    static let s: Float = -0.5
    static let m: Float = 0.0
    static let l: Float = 1.0
    static let xl: Float = 2.0
    static let xl2: Float = 3.0
}
