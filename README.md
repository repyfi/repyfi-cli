```
% repeat Hey
Hey
Hey
```

```
% repeat "Hello, world\!" --count 3 --include-counter
1: Hello, world!
2: Hello, world!
3: Hello, world!
```

# Repeat

Repeat is a command-line tool for text repeating.

Repeat is based on the [Swift Argument Parser Example](https://github.com/apple/swift-argument-parser/blob/doc-generation/Examples/repeat/Repeat.swift).

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
