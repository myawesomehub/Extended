# Extended
 
Avoid writing those **fundamental utilities** every time for your applications. **Extended** provides you those utilities **at once**. Check the table below to understand it better.

# Contributing

Feel free to contribute and add stuffs. Join our [slack](https://join.slack.com/t/applobby/shared_invite/zt-13j99v4mc-P4RLL8ClueMu4XT8JijiLw) room to discuss anything.

- Fork the repo
- Clone the forked repo
- Add some code
- Create a pull request

# Features

| Type         |  Extended Features                                                |
| -------------| ----------------------------------------------------------------- |
| `Strings`    | `.randomString()` `.dateFormattedAs()` `GetCharacterByIndex`      |
| `Color`      | `.randomColor()` `.hexColor()` `.assetColor()` `.modeColor()`     |
| `Optional`   | `.unwrapped { }`                                                  |
| `Int`        | `.squared`                                                        |
| `Calendar`   | `.isSameDay()`                                                    |
| `CGFloat`    | `.screenWidth` `.screenHeight`                                    |

# Installation

Install it as swift package in your project

# Code Snippets

```swift
var name: String?
name.unwrapped { safeName in
    print("Found name is \(safeName)")
} noData: {
    print("Found nil. Handle error")
}

struct Data {
    var text: String
}

var data: [Data] = [
    .init(text: .randomWord())
]
```

# License

Extended is licensed under the [MIT License](https://github.com/App-Lobby/Extended/blob/main/LICENSE).
