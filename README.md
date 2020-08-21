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
![issue](https://user-images.githubusercontent.com/8268288/90844321-42141c80-e329-11ea-824b-a3f7ba222038.png)

#### Solution

**Make sure to use parentheses!**

```swift
var v = UIView()

let view: UIView = v + \.backgroundColor - .red 

((v + \.layer.cornerRadius - 3)
    + \.backgroundColor - .blue)
    + \.layer.borderWidth - 6

print(v.backgroundColor) // Output: ".blue"
```
