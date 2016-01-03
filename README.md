# JKLUIApplicationExtension

[![CI Status](http://img.shields.io/travis/Jacky/JKLUIApplicationExtension.svg?style=flat)](https://travis-ci.org/Jacky/JKLUIApplicationExtension)
[![Version](https://img.shields.io/cocoapods/v/JKLUIApplicationExtension.svg?style=flat)](http://cocoapods.org/pods/JKLUIApplicationExtension)
[![License](https://img.shields.io/cocoapods/l/JKLUIApplicationExtension.svg?style=flat)](http://cocoapods.org/pods/JKLUIApplicationExtension)
[![Platform](https://img.shields.io/cocoapods/p/JKLUIApplicationExtension.svg?style=flat)](http://cocoapods.org/pods/JKLUIApplicationExtension)

JKLUIApplicationExtension is a simple extension to facilitate iOS development.

It includes following categories:
###1. UIApplication+JKLAppDelegate

    This category has only one static method to shorten the call to get appdelegate. 

###2. UIApplication+JKLInstanceProvider

    This category extends the UIApplication with a dynamic instance provider. This provider actually is a thread safe mutable dictionary added through ObjC runtime. All the shared objects, include single objects can be held in this dictionary, therefore reducing the workload of implementing the singleton pattern. Additionally, this category provides flexibilities of cleaning up, replacing those shared objects.



## Usage

To run the example project, clone the repo, and run `pod `install from the Example directory first.

## Requirements

## Installation

JKLUIApplicationExtension is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "JKLUIApplicationExtension", '~> 0.1.0'
```

## Author

Jacky, Jiakai.lian@gmail.com

## License

JKLUIApplicationExtension is available under the MIT license. See the LICENSE file for more info.
