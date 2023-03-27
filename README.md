
# SwiftUI Staring 


 <h2 style="color:red;"> What is swiftUI?</h2>

`SwiftUI` is a user interface toolkit that lets us design apps in a declarative way. That’s a fancy way of saying that we tell `SwiftUI` how we want our user interface to look and work, and it figures out how to make that happen as the user interacts with it.

###  🟣 Imperative vs. declarative framework
The most important difference between the two is how we write code.

It would be harder to build a user interface programmatically (without the `storyboards`) when using `UIKit`. But that's not all. `UIKit` is referred to as an imperative framework, which entails merely specifying what needs to be done.

However, `SwiftUI` is a declarative framework, which means we'll just declare something that we expect to happen. Don't worry if this sounds confusing to you. It means that in both the frameworks code is structured differently.


 <h2 style="color:red;"> SwiftUI Application Structure </h2>

### `AppNameApp.swift`


```
import SwiftUI

@main
struct GuessFlagApp: App {
    var body: some Scene {
        WindowGroup {
          ContentView()
        }
    }
}
```

`@main` Every program needs an entry point and the main attribute indicates which type provides that entry point

` App` protocol is a type that defines an application

 `body` property that's type of some Scene 

 the body property will return us some contentView to be shown on the screen

 `windowGroup` {} to group list of scene togather - If you add two secne it will be above each others

### `contentView.swift `
```
struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

```
it's our initial piece of user interface. If this ere a `UIKit` project, this would be the `viewController` class.

the struct it's confirm to `View` protocol. Everything you want to show in `SwiftUI` needs to conform to View and that's means only one thing you need to have in the property body.

the return type of `body` property `some View` called opaque and it's means this will return some sort of View but SwiftUI doesn't need to know or care .
You need only pass one view to this property If you want to pass multiple views you need to group them in stack or form or Group .. etc 

### `ContentView_Preview `
```
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
```
it’s specifically there to show view previews inside Xcode as opposed to be on-screen in a real app
This code is only run  in a debug environment because it doesn’t make sense in a production app.


 <h2 style="color:red;">  View And Modifers</h2>

* ### [Stack](https://github.com/999lama/SwiftUI_starting/blob/main/UI%20Components/Stack/StackProject/stack.md)

#### `.frame`
```
struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello world")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            Color.red
        } .ignoresSafeArea()
    }
}
```
* Create a frame with infinity height and weight > you can do this if you plan to give a background full Color

####  `.frame(width: 20, height: 20)`
```
struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello world")
            .frame(width: 200, height: 200)
            Color.red
        } .ignoresSafeArea()
    }
}
```

* Create a frame with static height and width.

#### `.background(.red)`
```
var body: some View {
        VStack {
            Text("Hello world")
        }
        .background(.blue)
         .cornerRadius(20)
        .ignoresSafeArea()
  }

```

* Give the view a background color



####  `.shadow(radius: 10) `

```
 var body: some View {
        VStack {
            Text("Hello world")
        }
        .background(.blue)
        .shadow(radius: 5)
        .ignoresSafeArea()
    }

```

* Add shadow in corner of a view.

 
#### `.ignoresSafeArea()`
* To apply ignore safe area.

#### `.blur(radius: 5) `

```
 var body: some View {
        VStack {
            Text("Hello world")
        }
        .background(.blue)
        .blur(radius: 5)
        .ignoresSafeArea()
    }
```
    
* give some view a blur effect.

#### `.cornerRadius(5) `
* give some view a corner radius .

#### .padding() 

```
   var body: some View {
        VStack {
            Text("Hello world")
        }
        .padding()
        .padding(.vertical, 20)
    }
````

* Add a padding to your view if you pass 5 inside the arments will apply the padding to all the corner if you speicfy the padding exmaple; .padding(.vertical, 5) will only give a vertical padding.

####  .clipShape(Capsule()) 

```
var body: some View {
        VStack {
            Text("Hello world")
        }
        .frame(width: 200, height:200)
        .background(.red)
        .clipShape(Capsule())
        .padding()
    }

```
    
* will clip and shape the view to Capsule.

####  .foregroundColor(.white) 

````
  var body: some View {
        VStack {
            Text("Hello world")
        }
        .frame(width: 200, height:200)
        .background(.red)
        .clipShape(Capsule())
        .foregroundColor(.white)
    }
````

* Give the color for the forground example: text/ label / button 

#### Spacer()
```
 var body: some View {
        VStack {
            Spacer()
            Text("Hello")
            Spacer()
            Text("world")
            Spacer()
        }
     }

````
        

* Give the view spacer the spacer will fit depend on the screen size it's a nice Modifers(will give equality spacing )


