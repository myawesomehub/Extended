## Extended
 
Avoid writing those **fundamental utilities** every time for your app. **Extended** provides you those utilities **at once**. Check the table below to understand it better.

## Features

| Type         |  Extended Features                                                |
| -------------| ----------------------------------------------------------------- |
| `CLLocation` | `.getCoordinateByLocation()` `.getLocationByCoordinate()`         |
| `View`       | `ImageURLView()`                                                  |
| `Strings`    | `.randomString()` `.dateFormattedAs()` `GetCharacterByIndex`      |
| `Color`      | `.randomColor()` `.hexColor()` `.assetColor()` `.modeColor()`     |
| `Optional`   | `.unwrapped { }`                                                  |
| `Int`        | `.squared`                                                        |
| `Calendar`   | `.isSameDay()`                                                    |
| `CGFloat`    | `.screenWidth` `.screenHeight`                                    |

## Todo's

Visit issues section

## Contributing

Feel free to contribute and add stuffs.

- Fork the repo
- Clone the forked repo
- Create a new branch
- Add some code
- Create a pull request

## Contributors

<img src="https://contrib.rocks/image?repo=myawesomehub/Extended" width=70/>

## Installation

Install it as swift package in your project

## Code Snippets

```swift
var name: String?
name.unwrapped { safeName in
    print("Found name is \(safeName)")
} noData: {
    print("Found nil. Handle error")
}

ImageURLView(urlString: "https://images.unsplash.com/5/unsplash-kitsune-4.jpg?ixlib=rb-0.3.5&q=85&fm=jpg&crop=entropy&cs=srgb&ixid=eyJhcHBfaWQiOjEyMDd9&s=ce40ce8b8ba365e5e6d06401e5485390")

struct Data {
    var text: String
}

var data: [Data] = [
    .init(text: .randomWord())
]
```

## License

Extended is licensed under the [MIT License](https://github.com/App-Lobby/Extended/blob/main/LICENSE).
