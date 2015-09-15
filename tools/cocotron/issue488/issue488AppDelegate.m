//
//  issueXXXAppDelegate.m
//  issueXXX
//
//  Created by Gary Palter on 1/15/10.
//  Copyright 2010 Clozure Associates. All rights reserved.
//

#import "issue488AppDelegate.h"

@implementation issue488AppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	// Insert code here to initialize your application 
}

- (void)backOrForward:(id)sender {
    NSLog(@"backOrForward: invoked by %@", sender);
}

@end
