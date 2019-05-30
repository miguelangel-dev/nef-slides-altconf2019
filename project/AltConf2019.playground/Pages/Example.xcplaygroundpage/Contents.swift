
/*:
 ## Either vs Result
 We will review some types for error managment:
 
 * Either
 * Result
 
 */

//: - Note: Bow provides us functional programming in Swift
import Bow

/*:
 ### Either

 Sum type of types `A` and `B`. Represents a value of either one of those types, but not both at the same time. Values of type `A` are called *left*; values of type `B` are called *right*.
 */
let _either = Either<Error, String>.right("Either")
let either = _either.fold( { _ in "Default" },
                           { input in "Great \(input)!" } )

/*:
 ### Result
 
 A value that represents either a success or a failure, including an associated value in each case.
 */
let _result = Result<String, Error>.success("Result")
let result = _result.map({ input in "Great \(input)" })
/*:
 ### Result ~ Either
 
 - Important:
 Bow provides us a list of helpers to map kinds
 */
result.toEither()
