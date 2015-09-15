//
//  main.m
//  issue405
//
//  Created by Gary Palter on 9/4/09.
//  Copyright 2009 Clozure Associates. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Issue405AppDelegate.h"

int main(int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    [NSApplication sharedApplication];
    
    [NSApp setDelegate:[[[Issue405AppDelegate alloc] init] autorelease]];
    
    [NSApp run];
    
    [pool release];
}
