NSTerminal
==

A small class to interface the C++/C console IO functions into Objective-C for console apps.
Written in Objective-C++.

Example
==
```
[NSTerminal printString:@"Hello, world"];
[NSTerminal printString:[NSTerminal readString]];
[NSTerminal printStringWithFormat:@"Hello, %@", @"John"];
[NSTerminal printStringWithFormat:@"Your Number: %i", [NSTerminal readInt]];
[NSTerminal printStringWithFormat:@"Your Float: %f", [NSTerminal readFloat]];
```

Documentation
==
Class NSTerminal
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

Macros (NSInt.h)
--
`NSInt(val)`

Converts an int `val` to an `NSNumber`.

`NSFloat(val)`

Converts a float `val` to an `NSNumber`.

`NSBool(val)`

Converts a boolean `val` to an `NSNumber`.

`NSStr(val)`

Converts an ASCII C string `val` to a `NSString`.

`CInt(val)`

Converts an `NSNumber` `val` to an int.

`CFloat(val)`

Converts an `NSNumber` `val` to a float.

`CBool(val)`

Converts an `NSNumber` `val` to a boolean.

Licence
==
This code is released under the LGPLv3 licence.

