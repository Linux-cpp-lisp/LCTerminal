//
//  main.m
//  TestingNSTerminal
//
//  Created by A on 7/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "../LCTerminal.h"

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
        [LCTerminal printString:blah];
        // insert code here...
        [LCTerminal printString:@"Hello, world"];
        [LCTerminal printString:[NSTerminal readString]];
        [LCTerminal printStringWithFormat:@"Hello, %@", @"John"];
        [LCTerminal printStringWithFormat:@"Your Number: %i", [NSTerminal readInt]];
        [LCTerminal printStringWithFormat:@"Your Float: %f", [NSTerminal readFloat]];
        blah = [LCTerminal readString];
        [LCTerminal printString:blah];
        [LCTerminal printStringWithFormat:@"Your String: %@", blah];
        
    }
    return 0;
}

