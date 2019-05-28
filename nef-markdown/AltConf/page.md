
# Title for AltConf
 This is an example for AltConf in *Madrid*, __Spain__

```swift
import Bow

let test = Either<Error, String>.right("Yeah!")
```

In case `test` doen't have any value, will take `default`

```swift
test.getOrElse("Default yeah!")
```
