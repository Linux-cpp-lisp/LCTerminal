//
//  NSTerminal.h
//  NSTerminal
//
//  Created by A on 7/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//
//Objective-C imports
#import <Foundation/Foundation.h>
#import "NSInt.h"

/*
 NSTerminal is a simple class that can be used to ease interaction with the terminal in Objective-C OSX console programs. Although Objective-C 
 already has NSLog(), that is only useful for just that, logging. NSTerminal aims to provide a simple interface to the terminal, wrapping the 
 C++ standard library I/O functions (cin,cout,cerr). Constructing an instance of NSTerminal is pointless, all methods are class.
 */

@interface NSTerminal : NSObject
//----Output
//A sort of Objective-C printf. Uses NSString's stringWithFormat: method for formating.
+(void)printStringWithFormat:(NSString*)format,...;
+(void)printStringWithoutNewlineWithFormat:(NSString*)format,...;
//Print an NSString
+(void)printString:(NSString*)str;
+(void)printStringWithoutNewline:(NSString *)str;

//----Input
//Read an integer, eg. "42"
+(int)readInt;
//Read a float, eg. 4.5
+(float)readFloat;
//Read an NSString of varying length until newline.
+(NSString*)readString;
//Read a URL
+(NSURL*)readURL;
@end
