//
//  IssueXXXAppDelegate.h
//  IssueXXX
//
//  Created by Gary Palter on 2/18/10.
//  Copyright 2010 Clozure Associates. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface IssueXXXAppDelegate : NSObject
#ifndef WINDOWS
<NSApplicationDelegate>
#endif
{
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end
