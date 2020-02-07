import Foundation
import SwiftyBeaver

var log: SwiftyBeaver.Type { get { return logger(format: formatWithFile) } }
var logLifeCycle: SwiftyBeaver.Type { get { return logger(format: formatBasic) } }

private func logger(format: String) -> SwiftyBeaver.Type  {
    let log = SwiftyBeaver.self
    log.removeAllDestinations()
    let console = ConsoleDestination()
    console.format = format
    log.addDestination(console)
    return log
}

private let formatWithFile = "$DHH:mm:ss$d $C$L$c $N.$F:$l $M"
private let formatBasic = "$DHH:mm:ss$d $C$L$c $M"
