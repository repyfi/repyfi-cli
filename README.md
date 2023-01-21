# RepeatCLI

[![Swift Compatibility](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fjaroshevskii%2Frepeat-cli%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/jaroshevskii/repeat-cli)
[![Platform Compatibility](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fjaroshevskii%2Frepeat-cli%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/jaroshevskii/repeat-cli)
![Platform Compatibility Windows](https://img.shields.io/badge/Platform%20Compatibility-Windows-blue)

RepeatCLI is a simple [command-line](https://en.wikipedia.org/wiki/Command-line_interface) application for text repeating, based on the [Example Repeat](https://github.com/apple/swift-argument-parser/blob/doc-generation/Examples/repeat/Repeat.swift) from [Swift Argument Parser](https://github.com/apple/swift-argument-parser) library.

```zsh
% repeat-cli 'This text will be repeated three times with a counter 🦄' \
  --count 3 \
  --include-counter
1: This text will be repeated three times with a counter 🦄
2: This text will be repeated three times with a counter 🦄
3: This text will be repeated three times with a counter 🦄
```

## Usage

RepeatCLI is a CLI application, this means that the **application must be executed from the [Terminal](https://en.wikipedia.org/wiki/Terminal_emulator)**.

### Basic repetition

Use `repeat-cli <text>` to repeat the text. Where `<text>` is your text.

```zsh
repeat-cli Hello
```

**Result:**

```zsh
% repeat-cli Hello
Hello
Hello
```

To repeat several words or even whole sentences, the text must be wrapped with an `'` or `"` symbol on both sides.

```zsh
repeat-cli 'Be faster 🐢'
```

**Result:**

```zsh
% repeat-cli 'Be faster 🐢'
Be faster 🐢
Be faster 🐢
```

> **Note:** If `<text>` is missing you will get this error:
>
> ```zsh
> Error: Missing expected argument '<text>'
> ```

### Number of repetition

By default, the text will be repeated only twice.

To set a custom number of repetitions, use `--count <count>` option. Where `<count>` is a number.

```zsh
repeat-cli 'I promise to always use UTF-8 🐶' --count 5
```

> **Note:** You can also use shorter entry.
> 
> ```zsh
> repeat-cli 'I promise to always use UTF-8 🐶' -c 5
> ```

**Result:**

```zsh
% repeat-cli 'I promise to always use UTF-8 🐶' --count 5
I promise to always use UTF-8 🐶
I promise to always use UTF-8 🐶
I promise to always use UTF-8 🐶
I promise to always use UTF-8 🐶
I promise to always use UTF-8 🐶
```

> **Note:** `<count>` must be greater than zero. Otherwise you will get this error:
>
> ```zsh
> Error: 'count' must be greater than zero.
> ```

### Repetition counter

To include a repetition counter, use `--include-counter` option.

```zsh
repeat-cli 'Yare yare daze...' --count 3 --include-counter
```
> **Note:** You can also use shorter entry.
> 
> ```zsh
> repeat-cli 'Yare yare daze...' -c 3 -i
> ```

**Result:**

```zsh
% repeat-cli 'Yare yare daze...' --count 3 --include-counter
1: Yare yare daze...
2: Yare yare daze...
3: Yare yare daze...
```

### Multiline

Multiline may be useful if you need to repeat a text that consists of several lines, or write an arguments in a more readable version.

To use multilining, you must use `\` as if it were a newline character.

```zsh
repeat-cli 'Dum-dum-dum-dum, ditty dum-dum-dum \
            Dum, dum, dum'
```

**Result:**

```zsh
% repeat cli 'Dum-dum-dum-dum, ditty dum-dum-dum \
              Dum, dum, dum'
Dum-dum-dum-dum, ditty dum-dum-dum
Dum, dum, dum
Dum-dum-dum-dum, ditty dum-dum-dum
Dum, dum, dum
```

### Arguments order does not matter

The program uses the following order of arguments:

```
<text> [--count <count>] [--include-counter]
```

But that doesn't mean you have to follow it. **Any combination of arguments will be correct.**

The following commands will work the same way:

- `repeat-cli --count 1 --include-counter 'Hello everyone!'`
- `repeat-cli -с 1 'Hello everyone!' --include-counter `
- `repeat-cli -i --count 1 'Hello everyone!'`

## Installation

???

## Contributing

Interested in contributing to Slate? We'd love your help. Slate is an open source project, built one contribution at a time by users like you.

## License

Licensed under the [MIT License](LICENSE).
