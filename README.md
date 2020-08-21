# KPEdit

Quick KeyPath Editting

### Example Usage
```swift
/*
class SomeObject {
  var value = ""
}
*/
let someValue = SomeObject()

print(someValue.value) // Output: ""

/*
(ObjectForKeyPath) + (KeyPath) - (ValueOfKeyPath)
*/
someValue + \.value - "Hello World"

print(someValue.value) // Output: "Hello World"
```

#### Known Issue
![CleanShot 2020-08-21 at 17 20 26](https://user-images.githubusercontent.com/8268288/90939924-a212cd80-e3d2-11ea-9a25-e7d3c7ad3a56.png)
> error: the compiler is unable to type-check this expression in reasonable time; try breaking up the expression into distinct sub-expressions
        dumb + \.string - "Hello!" + \.double - 3.14 + \.array - [1, 43, 6, true]
        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~

#### Solution

**Make sure to use parentheses!**

```swift
var dumb = DumbStruct()
        
((dumb + \.string - "Hello!")
     + \.double - 3.14)
     + \.array - [1, 43, 6, true]

XCTAssertEqual(dumb.string, "Hello, World!")
```
