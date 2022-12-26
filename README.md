```
% repeat "Repeat this text three times with a counter" --count 3 --include-counter
1: Repeat this text three times
2: Repeat this text three times
3: Repeat this text three times
```

# Repeat

Repeat is a command-line tool for text repeating. Repeat is based on the [Repeat Example](https://github.com/apple/swift-argument-parser/blob/doc-generation/Examples/repeat/Repeat.swift) from [Swift Argument Parser](https://github.com/apple/swift-argument-parser) library.

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
