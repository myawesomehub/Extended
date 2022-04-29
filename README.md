<p align="center">
  <img src="https://github.com/myawesomehub/Extended/blob/main/Logo/logo.png"> <br />
  <img src="https://img.shields.io/badge/platform-iOS-green" >
  <img src="https://img.shields.io/badge/language-swift-orange" >
  <img src="https://img.shields.io/badge/issues-open-yellow" >
  <img src="https://img.shields.io/badge/discussion-open-blue" >
  <img src="https://img.shields.io/badge/production-live-red" >
</p>

## What is Extended?
 
It provides you a collection of `extension` for types like `String`, `Int`, `CLLocation` and many more. Take a look at this [table](#features) to understand better. <br />

Avoid writing those **fundamental utilities** every time for your app. **Extended** provides you the collection of those utilities **at once**. 

[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/mohdYasir03)

## How to use it?

Two ways to use it

- You can copy the requared `extension` code block from the `source` file directly into your project
- You can import this `swift package` in your project and use all the extended features mentioned below in the table

## Features

| Type         |  Extended Features                                                                                    |
| -------------| ----------------------------------------------------------------------------------------------------- |
| `CLLocation` | `.getCoordinateByLocation()` `.getLocationByCoordinate()`                                             |
| `View`       | `ImageURLView()`                                                                                      |
| `Strings`    | `.randomString()` `.dateFormattedAs()` `GetCharacterByIndex` `.isValidEmail()` `.getRandomEmail()`    |
| `Color`      | `.randomColor()` `.hexColor()` `.assetColor()` `.modeColor()`                                         |
| `Optional`   | `.unwrapped { }`                                                                                      |
| `Int`        | `.squared`                                                                                            |
| `Calendar`   | `.isSameDay()`                                                                                        |
| `CGFloat`    | `.screenWidth` `.screenHeight`                                                                        |

## Todo's

- Raise a pull request for any `extension` you wish to add, or
- Visit issues section

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
