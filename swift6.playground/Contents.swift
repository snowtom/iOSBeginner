import Cocoa

let name = "Tom"
let radius = 5.2
let pi = 3.1415926
let greeting = "Hello, \(name)!"
let circleArea = "The area of a circle with radius \(radius) is \(pi * radius * radius)"
print(greeting, circleArea)

let quotation = """
    Even though there's whitespace to the left,
    the actual lines aren't indented.
        Except for this line.
    Double quotes (") can appear without escaped.
    I still have \(radius * pi) big circle.
    """

print(quotation)
