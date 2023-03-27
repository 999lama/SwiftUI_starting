
#### ` VStack()`
```
struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Text("Hello")
            Text("world")
        }
    }
}
```
- It will add views inside one above the another one somethimes we use it to add to the view 
background Color easily .
- The init have 3 values spacing/ aligment and content you need to pass the content but If you don't pass the spacing and aligment the stack init with the deafult values.

#### `HStack()`
```
struct ContentView: View {
    var body: some View {
        HStack(spacing: 20) {
            Text("Hello")
            Text("world")
        }
    }
}
```
* Horioznatal stack view 
- The init have 3 values spacing/ aligment and content you need to pass the content but If you don't pass the spacing and aligment the stack init with the deafult values.

#### `VStack()`
```
struct ContentView: View {
    var body: some View {
       VStack(spacing: 0) {
           Color.red
           Color.blue
        }
    }
}
```
* Vertical stack view 
- The init have 3 values spacing/ aligment and content you need to pass the content but If you don't pass the spacing and aligment the stack init with the deafult values.
