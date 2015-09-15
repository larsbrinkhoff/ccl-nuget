//
//  IssueXXXAppDelegate.m
//  IssueXXX
//
//  Created by Gary Palter on 2/18/10.
//  Copyright 2010 Clozure Associates. All rights reserved.
//

#import "IssueXXXAppDelegate.h"
#import "PreferencesWindowController.h"

@implementation IssueXXXAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    PreferencesWindowController *controller = [[PreferencesWindowController alloc] init];
    [controller showWindow:nil];
}

@end
