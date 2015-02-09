JSONLiteral
===========

[![Release](http://img.shields.io/github/release/devxoul/JSONLiteral.svg?style=flat)](https://github.com/devxoul/JSONLiteral/releases?style=flat)
[![Build Status](https://travis-ci.org/devxoul/JSONLiteral.svg?branch=master)](https://travis-ci.org/devxoul/JSONLiteral)

JSON Literal for Swift.


Installation
------------

We recommend you to use git submodule.

```console
$ git submodule add https://github.com/devxoul/JSONLiteral.git
$ git submodule update --init --remote
```

Then add `JSONLiteral.swift` file into your project in Xcode.

> **Why not [CocoaPods](http://cocoapods.org) or [Carthage](https://github.com/Carthage/Carthage)?** CocoaPods and Carthage uses dynamic framework. When compiled into framework, only public extensions can be used. But Swift doesn't support **public** extension.
