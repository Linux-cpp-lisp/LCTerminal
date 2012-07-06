//
//  NSTerminal.m
//  NSTerminal
//
//  Created by A on 7/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//
#import "NSTerminal.h"


#include <iostream>
#include <string>
#include <stdio.h>
using namespace std;

@implementation NSTerminal
//----Output
+(void)printString:(NSString *)str
{
    cout<<[str UTF8String]<<endl;
}
+(void)printStringWithoutNewline:(NSString *)str
{
    cout<<[str UTF8String];
}
+(void)printStringWithFormat:(NSString *)format, ...
{
    va_list args;
    va_start(args, format);
    printf("%s\n",[[[NSString alloc] initWithFormat:format arguments:args] UTF8String]);
    va_end(args);
}
+(void)printStringWithoutNewlineWithFormat:(NSString *)format, ...
{
    va_list args;
    va_start(args, format);
    printf("%s",[[[NSString alloc] initWithFormat:format arguments:args] UTF8String]);
    va_end(args);
}
//----Input
+(int)readInt
{
    int res;
    cin>>res;
    cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
    return res;
}
+(float)readFloat
{
    float res;
    cin>>res;
    cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
    return res;
}
+(NSString *)readString
{
    string res;
    std::getline(std::cin, res);
    return [NSString stringWithCString:res.c_str() encoding:NSASCIIStringEncoding];
}
+(NSURL*)readURL
{
    string res;
    cin>>res;
    return [NSURL URLWithString:[NSString stringWithCString:res.c_str() encoding:NSASCIIStringEncoding]];
}
@end
