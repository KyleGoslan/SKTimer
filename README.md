# SKTimer

[![CI Status](http://img.shields.io/travis/KyleGoslan/SKTimer.svg?style=flat)](https://travis-ci.org/KyleGoslan/SKTimer)
[![Version](https://img.shields.io/cocoapods/v/SKTimer.svg?style=flat)](http://cocoapods.org/pods/SKTimer)
[![License](https://img.shields.io/cocoapods/l/SKTimer.svg?style=flat)](http://cocoapods.org/pods/SKTimer)
[![Platform](https://img.shields.io/cocoapods/p/SKTimer.svg?style=flat)](http://cocoapods.org/pods/SKTimer)
[![CocoaPods](https://img.shields.io/cocoapods/metrics/doc-percent/SKTimer.svg)]()

## Requirements

Designed to be uses in a `SpriteKit` project. 

## Usage

Create an instacne of an `SKTimer` object 

```swift 
let timer = SKTimer()
```

Call the `start(_:)` method on your new timer passing in the current time from the scene. This is the `currentTime` parameter from your scenes update method. Usually you'll want to create a property in your scene to hold this value so you'll have access to it from outside your update method.

```swift 
timer.start(currentTime)
```

In your scenes update method make sure you call the timers `update(_:completion:)` method passing in the current time. This is how the time calculates it count. 

```swift
timer.update(currentTime, timeUp: nil)
```

You can get th current time of the timer from it `time` propert.

```swift
print(timer.time)
```

## Installation

SKTimer is available through [CocoaPods](http://cocoapods.org). To install it, simply add th following line to your Podfile:

```ruby
pod "SKTimer"
```


## Author

KyleGoslan

## License

SKTimer is available under the MIT license. See the LICENSE file for more info.
