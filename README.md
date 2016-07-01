# MXCardsSwipingView

<!--[![CI Status](http://img.shields.io/travis/Scott Kensell/MXCardsSwipingView.svg?style=flat)](https://travis-ci.org/Scott Kensell/MXCardsSwipingView)-->
[![Version](https://img.shields.io/cocoapods/v/MXCardsSwipingView.svg?style=flat)](http://cocoapods.org/pods/MXCardsSwipingView)
[![License](https://img.shields.io/cocoapods/l/MXCardsSwipingView.svg?style=flat)](http://cocoapods.org/pods/MXCardsSwipingView)
[![Platform](https://img.shields.io/cocoapods/p/MXCardsSwipingView.svg?style=flat)](http://cocoapods.org/pods/MXCardsSwipingView)

A lightweight solution for introducing swipable cards like Tinder or AngelList. Just a few hundred lines of code.

## Preview

![Swiping example](http://i.giphy.com/26BRuvxrEWDD9252g.gif)
![Swiping example](http://i.giphy.com/3o72F2rfVseshx2weY.gif)

## Usage

```Objective-C
#import <MXCardsSwipingView/MXCardsSwipingView.h>
```
Create an `MXCardsSwipingView` and add it to your view hierarchy. Add cards to it with `enqueueCard:`. Each card added is immediately added to the view heirarchy behind the previously enqueued cards. When a card is dismissed you can enqueue more during the delegate callback 
```Objective-C
- (void)cardsSwipingView:(MXCardsSwipingView*)cardsSwipingView willDismissCard:(UIView*)card toLeft:(BOOL)toLeft;
```
A card can be any `UIView`, but you can get more customizability by adopting the `MXSwipableCard` protocol (e.g. to fade in a certain subview of the card depending on the swipe direction).

The example project (which is featured in the above gifs) shows how to add a drop shadow to a card with corner radius as well as how to add differing transforms to background cards as opposed to the top card.

Whatever size you enqueue a card with, it stays that size. Only the center of the card will be readjusted and managed by `MXCardsSwipingView`.

Check out `MXCardsSwipingView.h` for full API.

## Development

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

Deployment target of at least iOS 7.0.

## Installation

MXCardsSwipingView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "MXCardsSwipingView"
```

## Author

Scott Kensell, skensell@gmail.com

## License

MXCardsSwipingView is available under the MIT license. See the LICENSE file for more info.
