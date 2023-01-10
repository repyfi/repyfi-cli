//
// RepeatCLI
//

import ArgumentParser

@main
struct RepeatCLI: ParsableCommand {
  static var configuration = CommandConfiguration(
    abstract: "📃 Simple cross-platform command-line tool for text repeating.",
    version: """
    Repeat CLI version 0.3.0
    Homepage: https://jaroshevskii.github.io/repeat-cli/
    """
  )

  /// Text to repeat.
  @Argument(help: "Text to repeat.")
  var text: String

  /// Number of `text` repetitions.
  @Option(
    name: [.customShort("c"), .customLong("count")],
    parsing: .unconditional,
    help: "Number of 'text' repetitions.")
  var repeatCount: Int = 2

  /// Include a counter with each repetition.
  @Flag(name: .shortAndLong, help: "Include a counter withc earh repetition.")
  var includeCounter = false

  /// Validates the properties of the instance after parsing.
  func validate() throws {
    guard repeatCount > 0 else {
      throw ValidationError("'count' must be greater than zero.")
    }
  }

  func run() {
    for i in 1...repeatCount {
      if includeCounter {
        print("\(i): \(text)")
      } else {
        print(text)
      }
    }
  }
}
