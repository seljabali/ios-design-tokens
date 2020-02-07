import Foundation

extension NSObject {

    class var simpleClassName: String {
        return String(describing: self)
    }

    var simpleClassName: String {
        return type(of: self).simpleClassName
    }
}
