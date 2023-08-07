//
// RepifyCLICommand.swift
// RepifyCLI
//

import ArgumentParser

@main
struct RepifyCLICommand: ParsableCommand {
  @Argument(help: "The text to be repeated.")
  var text: String

  func run() {
    for _ in 0..<2 {
      print(text)
    }
  }
}
