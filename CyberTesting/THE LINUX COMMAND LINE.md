1. The **less** command is a program to view text files.
2. **cat**: Concatenate Files
The cat command reads one or more files and copies them to standard
output
3. **grep**: Print Lines Matching a Pattern
grep is a powerful program used to find text patterns within files. It’s used
like this:
```sh
grep pattern filename
```
## Brace Expansion
Perhaps the strangest expansion is called brace expansion. With it, you can
create multiple text strings from a pattern containing braces. Here’s an
example:

```sh 
echo Front-{A,B,C}-Back
#Front-A-Back Front-B-Back Front-C-Back
```
## Cursor Movement Commands
| Key    | Action                                                                                                |
| ------ | ----------------------------------------------------------------------------------------------------- |
| Ctrl-A | Move cursor to the beginning of the line.                                                             |
| Ctrl-E | Move cursor to the end of the line.                                                                   |
| Ctrl-F | Move cursor forward one character; same as the right arrow key.                                       |
| Ctrl-B | Move cursor backward one character; same as the left arrow key.                                       |
| Alt-F  | Move cursor forward one word.                                                                         |
| Alt-B  | Move cursor backward one word.                                                                        |
| Ctrl-L | Clear the screen and move the cursor to the top-left corner. The `clear` command does the same thing. |
## Modifying text
| Key    | Action                                                                               |
| ------ | ------------------------------------------------------------------------------------ |
| Ctrl-D | Delete the character at the cursor location.                                         |
| Ctrl-T | Transpose (exchange) the character at the cursor location with the one preceding it. |
| Alt-T  | Transpose the word at the cursor location with the one preceding it.                 |
| Alt-L  | Convert the characters from the cursor location to the end of the word to lowercase. |
| Alt-U  | Convert the characters from the cursor location to the end of the word to uppercase. |
## Text Deletion and Yanking Commands
| Key           | Action                                                                                                                       |
| ------------- | ---------------------------------------------------------------------------------------------------------------------------- |
| Ctrl-K        | Kill text from the cursor location to the end of the line.                                                                   |
| Ctrl-U        | Kill text from the cursor location to the beginning of the line.                                                             |
| Alt-D         | Kill text from the cursor location to the end of the current word.                                                           |
| Alt-Backspace | Kill text from the cursor location to the beginning of the current word. If at the start of a word, kills the previous word. |
| Ctrl-Y        | Yank text from the kill-ring and insert it at the cursor location.                                                           |
