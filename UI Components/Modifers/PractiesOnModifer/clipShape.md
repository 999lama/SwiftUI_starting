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
