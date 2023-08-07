import ArgumentParser
import Foundation

/// A lightweight and user-friendly tool for effortlessly repeating and customizing text.
@main
struct Repify: ParsableCommand {
  static var configuration = CommandConfiguration(
    abstract: "A lightweight and user-friendly tool for effortlessly repeating and customizing text.",
    discussion: """
    With Repify CLI, you can unleash your creativity by easily creating endless variations of text with just a few simple commands.
    
    LINKS:
      Website:     https://jaroshevskii.github.io/repify-cli
      Discussions: https://github.com/jaroshevskii/repify-cli/discussions
      Issues:      https://github.com/jaroshevskii/repify-cli/issues
      Repository:  https://github.com/jaroshevskii/repify-cli
    """
  )

  /// The text to be repeated.
  @Argument(help: "The text to be repeated.")
  var text: String

  /// The number of text repetitions. Default is 2.
  @Option(name: .shortAndLong, help: "The number of text repetitions.")
  var count: Int = 2

  /// The delay (in seconds) between repetitions.
  @Option(name: .shortAndLong, help: "The delay (in seconds) between repetitions.")
  var delay: Double?

  /// Include repetition numbering.
  @Flag(name: .shortAndLong, help: "Include repetition numbering.")
  var includeNumbering: Bool = false

  func run() {
    for i in 1...count {
      if includeNumbering {
        print("\(i): \(text)")
      } else {
        print(text)
      }

      if let delay = delay, i < count {
        Thread.sleep(forTimeInterval: delay)
      }
    }
  }
}
