<h1 align="center">Repify CLI</h1>
<p align="center">A lightweight and user-friendly tool for effortlessly repeating and customizing text.</p>

<!-- ![Baner](https://github.com/jaroshevskii/repify-cli/assets/72662383/03a9702c-6937-4f2b-bc7f-562533cdf2b7) -->

![Baner](https://github.com/jaroshevskii/repify-cli/assets/72662383/fd8b929c-a9a1-489d-b48a-1765e4a800ee)

## Installation

Repyfi CLI is not yet available in any package manager and there are no compiled versions 😮‍💨. So you have to compile manually.

## Usage

Repyfi CLI is a CLI application, this means that the **application must be executed from the [Terminal](https://en.wikipedia.org/wiki/Terminal_emulator)**.

### Basic repetition

Use `repyfi <text>` to repeat the text. Where `<text>` is your text.

```zsh
repyfi Hello
```

**Result:**

```zsh
% repyfi Hello
Hello
Hello
```

To repeat several words or even whole sentences, the text must be wrapped with an `'` or `"` symbol on both sides.

```zsh
repyfi 'Be faster 🐢'
```

**Result:**

```zsh
% repyfi 'Be faster 🐢'
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
repyfi 'I promise to always use UTF-8 🐶' --count 5
```

> **Note:** You can also use shorter entry.
> 
> ```zsh
> repyfi 'I promise to always use UTF-8 🐶' -c 5
> ```

**Result:**

```zsh
% repyfi 'I promise to always use UTF-8 🐶' --count 5
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
repyfi 'Yare yare daze...' --count 3 --include-counter
```
> **Note:** You can also use shorter entry.
> 
> ```zsh
> repyfi 'Yare yare daze...' -c 3 -i
> ```

**Result:**

```zsh
% repyfi 'Yare yare daze...' --count 3 --include-counter
1: Yare yare daze...
2: Yare yare daze...
3: Yare yare daze...
```

### Multiline

Multiline may be useful if you need to repeat a text that consists of several lines, or write an arguments in a more readable version.

To use multilining, you must use `\` as if it were a newline character.

```zsh
repyfi 'Dum-dum-dum-dum, ditty dum-dum-dum \
Dum, dum, dum'
```

**Result:**

```zsh
% repyfi 'Dum-dum-dum-dum, ditty dum-dum-dum \
Dum, dum, dum'
Dum-dum-dum-dum, ditty dum-dum-dum
Dum, dum, dum
Dum-dum-dum-dum, ditty dum-dum-dum
Dum, dum, dum
```

### Arguments order

Rpyfi CLI uses the following order of arguments:

```
<text> [--count <count>] [--include-counter]
```

But that doesn't mean you have to follow it. **Any combination of arguments will be correct.**

The following commands will work the same way:

- `repyfi --count 1 --include-counter 'Hello everyone!'`
- `repyfi -с 1 'Hello everyone!' --include-counter `
- `repyfi -i --count 1 'Hello everyone!'`

## Contributing

Interested in contributing to Repyfi CLI? We'd love your help. Repyfi CLI is an open source project, built one contribution at a time by users like you.

## License

Licensed under the [MIT License](LICENSE.md).
