//: [Previous](@previous)
/*: http://www.captechconsulting.com/blogs/ios-9-tutorial-series-protocol-oriented-programming-with-uikit
# Protocol-oriented programming

I've read countless articles about Swift protocols and the ins/outs of protocol extensions, and it's clear that protocol extensions will be another strong ingredient in the Swift recipe. Apple even recommends defaulting to a protocol instead of a class whenever possible -- this approach is the crux of protocol-oriented programming

---

### The Benefit of Protocols

Protocols are nothing new, but the idea that we can extend them with built-in functionality, shared logic, magical power...well that's a fascinating thought. More protocols == more flexibility. A protocol extension is a small chunk of modular functionality that can be adopted, overriden (or not) and can interact with type-specific code through the `where` clause.

`Protocols really only exist to keep the compiler happy, but protocol extensions are tangible pieces of logic shared across the entire codebase.`

While it's only possible to inherit from one superclass, we can adopt as many extended protocols as desired. Adopting a protocol that's extended is kind of like adding a directive to an element in Angular.js -- we're injecting logic that alters the way our object behaves. Protocols are no longer just a contract, with extensions they can be an adoption of functionality.

*/
//: [Next](@next)
