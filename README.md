# KALoader
[![CocoaPods](https://img.shields.io/badge/pod-v0.1-blue.svg)]()
[![Twitter](https://img.shields.io/badge/twitter-%40kirillzzy-blue.svg?style=flat)](https://twitter.com/kirillzzy)
![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg?style=flat)

Create breautiful animated placeholders for showing loading of data. You can change colors like you want.

![alt tag](https://github.com/Kirillzzy/KALoader/blob/master/imgs/grayLoader.gif)
![alt tag](https://github.com/Kirillzzy/KALoader/blob/master/imgs/purpleLoader.gif)
![alt tag](https://github.com/Kirillzzy/KALoader/blob/master/imgs/redLoader.gif)


# Usage
To add animated gray loader on any view:
```
view.showLoader()
```

To hide animated loader:
```
view.hideLoader()
```

You can ask is loader showing:
```
if view.isLoaderShowing() {
  view.hideLoader()
}
```

You can show loader with own custom colors and animation duration:
```
 let backColorRed = UIColor(red: 255.0 / 255, green: 75.0 / 255, blue: 97.0 / 255, alpha: 1.0)
 let firstLoadColorRed = UIColor(red: 239.0 / 255, green: 64.0 / 255, blue: 85.0 / 255, alpha: 1.0)
 let secondLoadColorRed = UIColor(red: 225.0 / 255, green: 54.0 / 255, blue: 75.0 / 255, alpha: 1.0)
 let colorsRed = [backColorRed, firstLoadColorRed, secondLoadColorRed, firstLoadColorRed, backColorRed]
 view.showLoader(colors: colorsRed, animationDuration: 1.5)
```
‼️ 'colors' array should get only 5 different colors

**For more usage see 'Examples'**


# Installation
To integrate in your project:
- Add the following to your [`Podfile`](http://cocoapods.org/) and run `pod install`
```
pod 'KALoader'
```
- Or clone as a git submodule


# Author
**Kirill Averyanov**

- [Twitter](https://twitter.com/kirillzzy) (@kirillzzy)

- [Website](http://kirillaveryanov.me)


# License
```
MIT License

Copyright (c) 2017 Kirill Averyanov

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
