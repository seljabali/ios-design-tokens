import UIKit

/// Created by Gaétan Zanella on 14/11/2018.
///     A view which removes itself from the responder chain.
///     Use whenever you need to provide a backdrop view to an `OverlayContainerViewController`.

public class PassThroughView: UIView {

    public override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        let view = super.hitTest(point, with: event)
        if view == self {
            return nil
        }
        return view
    }
}

public class PassThroughViewV2: UIView {

    override public func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        for subview in subviews {
            if !subview.isHidden && subview.isUserInteractionEnabled && subview.point(inside: convert(point, to: subview), with: event) {
                return true
            }
        }
        return false
    }

}
