
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
