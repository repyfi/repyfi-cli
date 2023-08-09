//
// Repify.swift
// RepifyCLI
//

import ArgumentParser
import Foundation

/// A lightweight and user-friendly tool for effortlessly repeating and customizing text.
@main
struct Repify: ParsableCommand {
  static let configuration = CommandConfiguration(
    abstract: "A lightweight and user-friendly tool for effortlessly repeating and customizing text.",
    discussion: """
    With Repify CLI, you can unleash your creativity by easily creating endless variations of text with just a few simple commands.
    
    LINKS:
      Website:     https://jaroshevskii.github.io/repify-cli/
      Discussions: https://github.com/jaroshevskii/repify-cli/discussions
      Issues:      https://github.com/jaroshevskii/repify-cli/issues
      Repository:  https://github.com/jaroshevskii/repify-cli
    """,
    version: """
    Repify CLI version \(version)
    Release: https://github.com/jaroshevskii/repify-cli/releases/tag/v\(version)
    """
  )

  /// The text to be repeated.
  @Argument(help: "The text to be repeated.")
  var text: String

  /// The number of text repetitions.
  @Option(name: .shortAndLong, help: "The number of text repetitions.")
  var count = 2

  /// Include repetition numbering.
  @Flag(name: .shortAndLong, help: "Include repetition numbering.")
  var includeNumbering: Bool = false

  /// The repetition format.
  @Option(name: .shortAndLong, help: "The repetition format. Use \\(text) and \\(number) as placeholders.")
  var format: String?

  /// Separator between repetitions.
  @Option(name: .shortAndLong, help: "The separator between repetitions.")
  var separator = "\n"

  /// The delay (in seconds) between repetitions.
  @Option(name: .shortAndLong, help: "The delay (in seconds) between repetitions.")
  var delay: Double?

  func run() {
    for i in 1...count {
      var formattedText: String
      if let format = format {
        formattedText = format
          .replacingOccurrences(of: "\\(text)", with: text)
          .replacingOccurrences(of: "\\(number)", with: "\(i)")
      } else {
        formattedText = includeNumbering ? "\(i): \(text)" : text
      }

      if i < count {
        print(formattedText, terminator: separator)
        if let delay = delay {
          Thread.sleep(forTimeInterval: delay)
        }
      } else {
        print(formattedText)
      }
    }
  }
}
