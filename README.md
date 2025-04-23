# InfiniteImageCarousellView

`InfiniteImageCarousellView` is a SwiftUI-based view component designed to create an infinite image carousel. It supports swiping between images and offers a seamless experience to showcase multiple images in a loop. Ideal for use cases like displaying multiple items or images in an interactive, looped view.

---

## Features

- **Infinite Scroll**: The carousel allows infinite scrolling, where images can be looped back to the start after reaching the end.
- **Full-Screen Support**: Images can be tapped to view in full screen (iOS only).
- **Customizable**: Easily customize the images and view configurations.
- **Cross-Platform Support**: Supports iOS 14+ and macOS 11.0+.

---

## Installation

### Swift Package Manager

To install `InfiniteImageCarousellView`, add the following package dependency to your project via Swift Package Manager:

1. In Xcode, go to **File** > **Swift Packages** > **Add Package Dependency**.
2. Paste the URL of the GitHub repository into the prompt.

https://github.com/FarrukhRasool/InfiniteImageCarousellView.git

Xcode will fetch and integrate the package into your project.

---

## Usage

You can use the `InfiniteImageCarousellView` in your SwiftUI views as follows:

### Basic Usage

```swift
import SwiftUI
import InfiniteImageCarousellView

struct ContentView: View {
    @State private var selectedIndex = 0

    var body: some View {
        InfiniteImageCarousellView(selectedIndex: $selectedIndex)
    }
}
Full Example
Here's a full example of how you can use the InfiniteImageCarousellView to display a list of images

import SwiftUI
import InfiniteImageCarousellView

struct ContentView: View {
    @State private var selectedIndex = 0

    let imageStrings: [String] = [
        "cat.png",  // Ensure the images are in the "Resources" folder
        "panda.png" // with .png extension
    ]

    var body: some View {
        InfiniteImageCarousellView(selectedIndex: $selectedIndex)
            .imageStrings(imageStrings)
            .frame(width: 300, height: 300)
            .cornerRadius(15)
    }
}
```

Customization
Image Array: Set the imageStrings array with the names of the images you'd like to display in the carousel.

Full-Screen Support: Tap on any image to present it in full screen (only available for iOS).

Full-Screen Feature
To enable a full-screen view for an image, fullScreenCover is used. Tapping on an image in the carousel will present the selected image in full screen.

```swift
#if os(iOS)
.fullScreenCover(isPresented: $isFullScreenPresented) {
    InfiniteImageCarousellView(selectedIndex: index)
}
#endif
```


Requirements
iOS 14.0+

Swift 5.0+

License
InfiniteImageCarousellView is released under the MIT License. See the LICENSE file for details.

Contributing
Fork the repository.

Create a new branch (git checkout -b feature-name).

Commit your changes (git commit -am 'Add new feature').

Push to the branch (git push origin feature-name).

Open a pull request.

You can place this entire content in your `README.md` file. It gives a comprehensive overview of your package with installation instructions, usage examples, and how to contribute. Let me know if you'd like to adjust anything!
