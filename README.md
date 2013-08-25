LCTerminal
==

A small class to interface the C++/C console IO functions into Objective-C for console apps.
Written in Objective-C++.

Example
==
```
[LCTerminal printString:@"Hello, world"];
[LCTerminal printString:[NSTerminal readString]];
[LCTerminal printStringWithFormat:@"Hello, %@", @"John"];
[LCTerminal printStringWithFormat:@"Your Number: %i", [NSTerminal readInt]];
[LCTerminal printStringWithFormat:@"Your Float: %f", [NSTerminal readFloat]];
```

Documentation
==
Class LCTerminal
--
`+(void)printStringWithFormat:(NSString*)format,...;`

Prints the string `format` formatted with the other arguments by using [NSString stringWithFormat], followed by a newline.

`+(void)printStringWithoutNewlineWithFormat:(NSString*)format,...;`

Same as `printStringWithFormat`, except without a trailing newline.

`+(void)printString:(NSString*)str;`

Prints string `str` to the console, followed by a newline.

`+(void)printStringWithoutNewline:(NSString *)str;`

Same as `printString`, but without the trailing newline.

`+(int)readInt;`

Inputs an integer from the terminal.

`+(float)readFloat;`

Inputs a float from the terminal.

`+(NSString*)readString;`

Inputs a string from the terminal.

`+(NSURL*)readURL;`

Inputs a URL from the terminal.

Licence
==
This code is released under the LGPLv3 licence.

