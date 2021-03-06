import Foundation

protocol ScopeFunc {}
extension ScopeFunc {
    @discardableResult
    @inline(__always) func apply(block: (Self) -> ()) -> Self {
        block(self)
        return self
    }
}
extension NSObject: ScopeFunc {}
