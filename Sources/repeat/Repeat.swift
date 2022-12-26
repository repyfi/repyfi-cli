//
// Repeat
//

import ArgumentParser

@main
struct Repeat: ParsableCommand {
  @Argument(help: "The phrase to repeat.")
  var pharse: String

  @Option(name: .shortAndLong, help: "The number of times to repeat 'pharse' (set to 2 by default).")
  var count: Int = 2

  @Flag(name: .shortAndLong, help: "Include a counter with each repetition.")
  var includeCounter = false

  func run() {
    let repeatCount = count ?? 2

    for i in 1...repeatCount {
      if includeCounter {
        print("\(i): \(pharse)")
      } else {
        print(pharse)
      }
    }
  }
}
