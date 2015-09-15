//
//  Issue405WindowDelegate.m
//  issue405
//
//  Created by Gary Palter on 9/8/09.
//  Copyright 2009 Clozure Associates. All rights reserved.
//

#import "Issue405WindowDelegate.h"


@implementation Issue405WindowDelegate

@synthesize window;

-(void) windowDidResize:(NSNotification *)note {
	NSRect rect = [[window contentView] frame];
	NSLog(@"Resize method called, new size {%f,%f}", rect.size.width, rect.size.height);
}

-(void) windowWillClose:(NSNotification *)note {
    NSLog(@"Close method called");
}

@end
