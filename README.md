# NavitiaSDK for iOS

This SDK helps you to use Navitia transport API in an iOS application.

## Installation

### Using cocoapods

Install Cocoapods

```bash
brew install cocoapods
```

Create a podfile

```
platform :ios, '9.0'
use_frameworks!

target 'MyAwesomeApp' do
    pod 'NavitiaSDK', '~> 0.3'
end
```

**Important:** NavitiaSDK is not compatible yet with iOS platform >= 11.0. Please use platform version 10.3 or lower

And execute the following command:

```bash
pod install
```

## Getting started

Please follow the installation instructions first.
To use NavitiaSDK classes, you have to import the NavitiaSDK module

```swift
import NavitiaSDK
```

### Init the SDK

```swift
let navitiaSDK = NavitiaSDK(configuration: NavitiaConfiguration(token: "my-token"))
```

### Building requests

This example show how to retrieve journeys between to lonlat coords.

```swift
navitiaSDK.journeysApi.newJourneyRequestBuilder()
    .withFrom("2.38;48.84")
    .withTo("2.29;48.82")
    .get { (result, error) in
        if result != nil {
            let journeys = result!.journeys
        }
    }
```


