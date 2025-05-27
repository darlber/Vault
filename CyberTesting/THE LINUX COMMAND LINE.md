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
| Key       | Action                                                                                                |
| --------- | ----------------------------------------------------------------------------------------------------- |
| Ctrl-A    | Move cursor to the beginning of the line.                                                             |
| Ctrl-E    | Move cursor to the end of the line.                                                                   |
| Ctrl-F    | Move cursor forward one character; same as the right arrow key.                                       |
| Ctrl-B    | Move cursor backward one character; same as the left arrow key.                                       |
| Alt-F     | Move cursor forward one word.                                                                         |
| Alt-B     | Move cursor backward one word.                                                                        |
| Ctrl-L    | Clear the screen and move the cursor to the top-left corner. The `clear` command does the same thing. |
## Modifying text
| Key       | Action                                                                               |
| --------- | ------------------------------------------------------------------------------------ |
| Ctrl-D    | Delete the character at the cursor location.                                         |
| Ctrl-T    | Transpose (exchange) the character at the cursor location with the one preceding it. |
| Alt-T     | Transpose the word at the cursor location with the one preceding it.                 |
| Alt-L     | Convert the characters from the cursor location to the end of the word to lowercase. |
| Alt-U     | Convert the characters from the cursor location to the end of the word to uppercase. |
## Text Deletion and Yanking Commands
Doble click copiar, middle click pegar.

| Key           | Action                                                                                                                       |
| ------------- | ---------------------------------------------------------------------------------------------------------------------------- |
| Ctrl-K        | Kill text from the cursor location to the end of the line.                                                                   |
| Ctrl-U        | Kill text from the cursor location to the beginning of the line.                                                             |
| Alt-D         | Kill text from the cursor location to the end of the current word.                                                           |
| Alt-Backspace | Kill text from the cursor location to the beginning of the current word. If at the start of a word, kills the previous word. |
| Ctrl-Y        | Yank text from the kill-ring and insert it at the cursor location.                                                           |
## Viewing processes
```sh
ps
# Adding the x option (note that there is no leading dash) tells ps to show all of our processes regardless of what terminal (if any) they are controlled by.The presence of a ? in the TTY column indicates no controlling terminal.
ps x
# ps aux como task  manager
ps aux
# dynamically
top
# The shell’s job control facility also gives us a way to list the jobs that have been launched from our terminal. Using the jobs command
jobs
```
## Processes
```sh
# llevar al background
'proceso' &
#llevar al foreground
fg %1
#% es el jobspec, visible con jobs opcional si solo hay 1
```

| Command | Description                                                                                                                                              |
| ------- | -------------------------------------------------------------------------------------------------------------------------------------------------------- |
| pstree  | Outputs a process list arranged in a tree-like pattern showing the parent-child relationships between processes.                                         |
| vmstat  | Outputs a snapshot of system resource usage including memory, swap, and disk I/O. To see continuous updates, run `vmstat <seconds>`. Stop with `Ctrl-C`. |
| xload   | A graphical program that draws a graph showing system load over time.                                                                                    |
| tload   | Similar to `xload` but draws the graph in the terminal. Terminate the output with `Ctrl-C`.                                                              |

## Signals y listado
```sh
kill -l
```

| Number | Name  | Meaning                                                                                                                                                                                                                         |
|--------|-------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 1      | HUP   | Hang up. Indicates that the controlling terminal has "hung up." Often used by daemon programs (like Apache) to reinitialize and reread configuration files.                                                                    |
| 2      | INT   | Interrupt. Same as pressing `Ctrl-C` in a terminal; typically terminates a program.                                                                                                       |
| 9      | KILL  | Kill. Immediately terminates a process without allowing cleanup. Cannot be ignored. Should be used as a last resort.                                                                                                             |
| 15     | TERM  | Terminate. Default signal sent by the `kill` command. Allows a program to terminate gracefully if it's able to handle the signal.                                                                                               |
| 18     | CONT  | Continue. Resumes a process that was stopped (e.g., by a `STOP` or `TSTP` signal). Sent by `bg` and `fg` commands.                                                                                                               |
| 19     | STOP  | Stop. Pauses a process without terminating it. Cannot be ignored or handled by the process.                                                                                                                                    |
| 20     | TSTP  | Terminal stop. Sent when `Ctrl-Z` is pressed. Unlike `STOP`, the process receives this signal and can choose to ignore it.                                                                                                      |
## Source
```sh
source 'file'
```
Forces Bash to reread and apply changes without needing to close and reopen terminal.
## Vim

| Key                 | Moves the cursor                                                  |
|---------------------|------------------------------------------------------------------|
| l or right arrow    | Right one character.                                              |
| h or left arrow     | Left one character.                                               |
| j or down arrow     | Down one line.                                                   |
| k or up arrow       | Up one line.                                                     |
| 0 (zero)            | To the beginning of the current line.                           |
| ^                   | To the first non-whitespace character on the current line.      |
| $                   | To the end of the current line.                                 |
| w                   | To the beginning of the next word or punctuation character.     |
| W                   | To the beginning of the next word, ignoring punctuation characters. |
| b                   | To the beginning of the previous word or punctuation character. |
| B                   | To the beginning of the previous word, ignoring punctuation characters. |
| ctrl-F or page down | Down one page.                                                  |
| ctrl-B or page up   | Up one page.                                                    |
| numberG             | To line number. For example, `1G` moves to the first line of the file. |
| G                   | To the last line of the file.                                   |
### Text Deletion Commands (Deleting is cutting ctrl+X)

| Command | Deletes                                                        |
|---------|----------------------------------------------------------------|
| x       | The current character                                          |
| 3x      | The current character and the next two characters             |
| dd      | The current line                                              |
| 5dd     | The current line and the next four lines                      |
| dW      | From the current cursor position to the beginning of the next word |
| d$      | From the current cursor location to the end of the current line |
| d0      | From the current cursor location to the beginning of the line  |
| d^      | From the current cursor location to the first non-whitespace character in the line |
| dG      | From the current line to the end of the file                   |
| d20G    | From the current line to the twentieth line of the file        |
### Yanking Commands

| Command | Copies                                                                |
|---------|------------------------------------------------------------------------|
| yy      | The current line                                                       |
| 5yy     | The current line and the next four lines                               |
| yW      | From the current cursor position to the beginning of the next word     |
| y$      | From the current cursor location to the end of the current line        |
| y0      | From the current cursor location to the beginning of the line          |
| y^      | From the current cursor location to the first non-whitespace character in the line |
| yG      | From the current line to the end of the file                           |
| y20G    | From the current line to the twentieth line of the file                |

	Command J (not navigation j) to join to the next line
	/  to search
	n to repeat search
	p to paste
	
	To switch from one file to the next, use this ex command:
	:bn
	
	To move back to the previous file, use the following:
	:bp
	
#### Example of Global Search-and-Replace Syntax

| Item             | Meaning                                                                                                           |
|------------------|-------------------------------------------------------------------------------------------------------------------|
| `:`              | The colon character starts an ex command.                                                                        |
| `%`              | Specifies the range of lines for the operation. `%` means from the first line to the last line. Can also be written as `1,5` or `1,$`. If omitted, the command operates only on the current line. |
| `s`              | Specifies the operation — in this case, substitution (search-and-replace).                                       |
| `/Line/line/`    | Specifies the search pattern (`Line`) and the replacement text (`line`).                                         |
| `g`              | Stands for "global" — applies the replacement to **every** instance of the search string in each line. If omitted, only the **first** instance per line is replaced. |
