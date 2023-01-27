//
// RepeatCLI
//

import ArgumentParser

@main
struct RepeatCLI: ParsableCommand {
  static var configuration = CommandConfiguration(
    abstract: "📃 Simple command-line tool for text repeating.",
    version: """
      RepeatCLI 0.4.0-alpha
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

  /// Text to insert between `text`.
  @Option(name: .shortAndLong, help: "Text to insert between <text>. The default is a newline.")
  var separator: String = "\n"

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
    var repeatedText = ""

    for i in 1...repeatCount {
      if includeCounter {
        repeatedText += "\(i): \(text)\(separator)"
      } else {
        repeatedText += "\(text)\(separator)"
      }
    }

    // Remove the vest separator at the end of `repeatedText`.
    repeatedText.removeLast(separator.count)

    print(repeatedText)
  }
}
