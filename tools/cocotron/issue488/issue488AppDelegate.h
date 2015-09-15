//
//  issueXXXAppDelegate.h
//  issueXXX
//
//  Created by Gary Palter on 1/15/10.
//  Copyright 2010 Clozure Associates. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface issue488AppDelegate : NSObject {
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

- (void)backOrForward:(id)sender;

@end
