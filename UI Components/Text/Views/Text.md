
#### ` Text()`
draws string in your interface 

```
Text("Hamlet")
    .font(.title)
   
   ````
   
   you can use `.font` modifer with it as well .foregoundColor.. etc
   
   ```
   let attributedString = try! AttributedString(
    markdown: "_Hamlet_ by William Shakespeare")

var body: some View {
    Text(attributedString)
        .font(.system(size: 12, weight: .light, design: .serif))
}

```
`AttributedString` can be used as well 

```
Text("To be, or not to be, that is the question:")
    .frame(width: 100)
    .lineLimit(1)
   .truncationMode(.tail)
   
   ```
  `.frame` Modifer as well can be added 
  
  ` .lineLimit(1)` use to specify the numbers of line for the text - The line limit. If nil, no line limit applies.
  `  .truncationMode(.tail)` used to specify the type of trunciate for the text 

 
  `minimumScaleFactor`  A fraction between 0 and 1 (inclusive) you use to specify the minimum amount of text scaling that this view permits.
  use `minimumScaleFactor` modifier if the text you place in a view doesn’t fit and it’s okay if the text shrinks to accommodate. For example, a label with a minimum scale factor of 0.5 draws its text in a font size as small as half of the actual font if needed.
  ```
  HStack {
    Text("This is a long label that will be scaled to fit:")
        .lineLimit(1)
        .minimumScaleFactor(0.5)
    TextField("My Long Text Field", text: $myTextField)
}
```


`allowsTightening(_:)` A Boolean value that indicates whether the space between characters compresses when necessary.
```
VStack {
    Text("This is a wide text element")
        .font(.body)
        .frame(width: 200, height: 50, alignment: .leading)
        .lineLimit(1)
        .allowsTightening(true)

    Text("This is a wide text element")
        .font(.body)
        .frame(width: 200, height: 50, alignment: .leading)
        .lineLimit(1)
        .allowsTightening(false)
}
```

  
