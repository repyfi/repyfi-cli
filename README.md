<div align="center">
  <h1>Repeat CLI</h1>
  <p>Command-line text repeater</p>
  <img src="https://user-images.githubusercontent.com/72662383/209880649-900ae5b7-4cfb-4325-aacf-9a9706526b55.png">
</div>

Repeat is a command-line tool for text repeating. Based on the [Repeat Example](https://github.com/apple/swift-argument-parser/blob/doc-generation/Examples/repeat/Repeat.swift) from [Swift Argument Parser](https://github.com/apple/swift-argument-parser) library.

```
% repeat "Repeat this text three times with a counter" --count 3 --include-counter
1: Repeat this text three times
2: Repeat this text three times
3: Repeat this text three times
```

```
% repeat --help
USAGE: repeat <pharse> [--count <count>] [--include-counter]

ARGUMENTS:
  <pharse>                The phrase to repeat.

OPTIONS:
  -c, --count <count>     The number of times to repeat 'pharse'.
  -i, --include-counter   Include a counter with each repetition.
  -h, --help              Show help information.
```
