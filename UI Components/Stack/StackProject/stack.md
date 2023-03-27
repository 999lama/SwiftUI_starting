
#### ` ZStack()`
```
let colors: [Color] =
    [.red, .orange, .yellow, .green, .blue, .purple]

var body: some View {
    ZStack {
        ForEach(0..<colors.count) {
            Rectangle()
                .fill(colors[$0])
                .frame(width: 100, height: 100)
                .offset(x: CGFloat($0) * 10.0,
                        y: CGFloat($0) * 10.0)
        }
    }
}
```
- VStack renders the views all at once.
- It will add views inside one above the another one somethimes we use it to add to the view 
background Color easily .
- The init have 3 values spacing/ aligment and content you need to pass the content but If you don't pass the spacing and aligment the stack init with the deafult values.

#### `HStack()`
```
var body: some View {
    HStack(
        alignment: .top,
        spacing: 10
    ) {
        ForEach(
            1...5,
            id: \.self
        ) {
            Text("Item \($0)")
        }
    }
}
```
* Horioznatal stack view 
- Use the regular HStack when you have a small number of subviews or don’t want the delayed rendering behavior of the “lazy” version.

#### `VStack()`
```
var body: some View {
    VStack(
        alignment: .leading,
        spacing: 10
    ) {
        ForEach(
            1...10,
            id: \.self
        ) {
            Text("Item \($0)")
        }
    }
}
```
* Vertical stack view 
- The init have 3 values spacing/ aligment and content you need to pass the content but If you don't pass the spacing and aligment the stack init with the deafult values.
