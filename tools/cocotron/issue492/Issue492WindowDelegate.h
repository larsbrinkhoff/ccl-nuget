//
//  Issue405WindowDelegate.h
//  issue405
//
//  Created by Gary Palter on 9/8/09.
//  Copyright 2009 Clozure Associates. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface Issue492WindowDelegate : NSObject
#ifndef WINDOWS
    <NSWindowDelegate>
#endif
{
	NSWindow *window;
}

@property (retain) NSWindow* window;

@end
