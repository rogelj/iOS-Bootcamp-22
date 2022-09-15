# Week 5

## Layout & Navigation

**Content:**

- [x]  [SwiftUI Layout and Interfaces](https://www.raywenderlich.com/28684964-swiftui-layout-interfaces) video course (1h 41m)
- [x]  [SwiftUI by Tutorials](https://www.raywenderlich.com/books/swiftui-by-tutorials/v4.0/chapters/13-navigation) book, Chapter 13: Navigation
- [x]  [SwiftUI by Tutorials](https://www.raywenderlich.com/books/swiftui-by-tutorials/v4.0/chapters/14-lists) book, Chapter 14: Lists
- [x]  **Optional**: [Xcode Tips and Tricks](https://www.raywenderlich.com/19019328-xcode-tips-and-tricks) video course (20m)



 We'll be building on the skills you have for getting views onscreen - in the right place, and at the right size. This will give us  the ability to create more complex and creative layouts.

## Alignment Guides

And, by the end of this episode, you’ll be able to achieve layouts that would be impossible, using only the built-in alignment values you’ve learned about so far. Here’s what’s going on under the hood:

When you assign an alignment value to a Stack, you allow it to get a piece of information from each of its child views. That’s a point along the axis —perpendicular to the stack– in the space of the child.

I like to imagine this as a line segment running across a child view. These are called Alignment Guides.

A Stack always gets one Alignment Guide from each of its children. Normally, they’re calculated for you, just by using an Alignment value on the Stack itself.

For example, here’s the default case of “center” HorizontalAlignment for a VStack. For every view, SwiftUI calculates the halfway point across the horizontal axis.

Then, all the views are matched up, based on those “center” Alignment Guides.

Combined with stacking tightly in the vertical dimension, that provides a complete internal layout for the VStack. And the Stack itself is positioned according to its parent’s rules —(and if there isn’t a parent, it just gets centered)— and then you have a fully complete layout.

So if all of your stacked views can use the same built-in layout guide, you’ve already learned everything you need.

But if you want to use different alignment guides for some or all of the views in a Stack, you’re going to need the alignmentGuide View Modifier. And you’ll apply it to children of the Stack.

The modifier has two parameters. The first one is an alignment value. If that doesn’t match up with what the parent stack is using, then the modifier doesn’t do anything. But if those alignment values do match, then this computeValue closure runs, and what it returns is used as the view’s Alignment Guide.

The closure uses one parameter, of type ViewDimensions. As you might expect, it’s got a width property, and one for height. The view they give you information about is the one on which you’re using the modifier.

So, for example, a center Alignment Guide is half of width or height, depending on alignment axis.

- [Drawing in iOS with SwiftUI](https://www.raywenderlich.com/6485147-drawing-in-ios-with-swiftui)
- [SwiftUI Anchor](https://developer.apple.com/documentation/swiftui/anchor)
- [GeometryProxy subscript](https://developer.apple.com/documentation/swiftui/geometryproxy/3364158-subscript)
- [SwiftUI View anchorPreference](https://developer.apple.com/documentation/swiftui/view/3365925-anchorpreference)
