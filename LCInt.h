//
//  LCInt.h
//  
//
//  Created by A on 6/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Foundation/Foundation.h"

#ifndef _LCInt_h
#define _LCInt_h

#define ToNSInt(val) [NSNumber numberWithInt: val ]
#define ToNSFloat(val) [NSNumber numberWithFloat: val ]
#define ToNSBool(val) [NSNumber numberWithBool: val ]
#define ToNSStr(val) [NSString stringWithCString: val encoding:NSASCIIStringEncoding]
#define ToCInt(val) [ val intValue]
#define ToCBool(val) [ val boolValue]
#define ToCFloat(val) [ val floatValue]

#endif
