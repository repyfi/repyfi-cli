//
// RepeatCLI
//

import ArgumentParser
import Foundation

@main
struct RepeatCLI: ParsableCommand {
  static var configuration = CommandConfiguration(
    abstract: "📃 Simple command-line tool for text repeating.",
    discussion: """
      LINKS:
        Website: https://jaroshevskii.github.io/repeat-cli/
        GitHub:  https://jaroshevskii/repeat-cli
      """,
    version: """
      RepeatCLI version 0.4.0
      Release: https://github.com/jaroshevskii/repeat-cli/releases/tag/v0.4.0
      """
  )

  /// Default counter style.
  static let defaultCounterStyle = #"\(number): "#

  /// Text for repeating.
  @Argument(help: "Text for repeating.")
  var text: String

  /// Number of `text` repetitions.
  @Option(
    name: [.customShort("c"), .customLong("count")],
    parsing: .unconditional,
    help: "Number of <text> repetitions.")
  var repeatCount: Int = 2

  /// Text to insert between `text`.
  @Option(name: .shortAndLong, help: "Text to insert between <text>. The default is a newline.")
  var separator: String = "\n"

  /// Include a counter with each repetition.
  @Flag(name: .shortAndLong, help: "Include a counter withc earh repetition.")
  var includeCounter = false

  /// Counter style.
  @Option(name: .long, help: "Counter style.")
  var counterStyle = defaultCounterStyle

  mutating func validate() throws {
    guard repeatCount > 0 else {
      throw ValidationError("'count' must be greater than zero.")
    }

    if counterStyle != Self.defaultCounterStyle {
      includeCounter = true
    }
  }

  func run() {
    var repeatedText: String

    if includeCounter {
      repeatedText = ""

      for index in 1...repeatCount {
        let number = counterStyle.replacingOccurrences(of: #"\(number)"#, with: "\(index)")
        repeatedText += "\(number)\(text)\(separator)"
      }
    } else {
      repeatedText = String(repeating: "\(text)\(separator)", count: repeatCount)
    }

    // Remove the vest separator at the end of `repeatedText`.
    repeatedText.removeLast(separator.count)

    print(repeatedText)
  }
}
