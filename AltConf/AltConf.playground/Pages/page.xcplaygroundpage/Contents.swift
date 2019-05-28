// nef:begin:hidden
import UIKit

Nef.Playground.needsIndefiniteExecution(true)
// nef:end

/*:
 # Title for AltConf
 This is an example for AltConf in *Madrid*, __Spain__
 */
import Bow

let test = Either<Error, String>.right("Yeah!")

//: In case `test` doen't have any value, will take `default`
test.getOrElse("Default yeah!")
