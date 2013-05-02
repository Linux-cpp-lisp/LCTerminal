//
//  NSInt.h
//  
//
//  Created by A on 6/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Foundation/Foundation.h"

#ifndef _NSInt_h
#define _NSInt_h

#define NSInt(val) [NSNumber numberWithInt: val ]
#define NSFloat(val) [NSNumber numberWithFloat: val ]
#define NSBool(val) [NSNumber numberWithBool: val ]
#define NSStr(val) [NSString stringWithCString: val encoding:NSASCIIStringEncoding]
#define CInt(val) [ val intValue]
#define CBool(val) [ val boolValue]
#define CFloat(val) [ val floatValue]

#endif
