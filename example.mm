//
//  main.m
//  TestingNSTerminal
//
//  Created by A on 7/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "../NSTerminal.h"

#include <iostream>
#include <string>
using namespace std;
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        string s;
        std::getline(cin, s);
        cout<<s<<endl;
        NSString* blah = [NSString stringWithCString:s.c_str() encoding:NSASCIIStringEncoding];
        [NSTerminal printString:blah];
        // insert code here...
        [NSTerminal printString:@"Hello, world"];
        [NSTerminal printString:[NSTerminal readString]];
        [NSTerminal printStringWithFormat:@"Hello, %@", @"John"];
        [NSTerminal printStringWithFormat:@"Your Number: %i", [NSTerminal readInt]];
        [NSTerminal printStringWithFormat:@"Your Float: %f", [NSTerminal readFloat]];
        blah = [NSTerminal readString];
        [NSTerminal printString:blah];
        [NSTerminal printStringWithFormat:@"Your String: %@", blah];
        
    }
    return 0;
}

