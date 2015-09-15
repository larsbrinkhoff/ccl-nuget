//
//  Issue405AppDelegate.m
//  issue405
//
//  Created by Gary Palter on 9/4/09.
//  Copyright 2009 Clozure Associates. All rights reserved.
//

#import "Issue492AppDelegate.h"
#import "Issue492WindowDelegate.h"


@implementation Issue492AppDelegate

-(void) applicationDidFinishLaunching:(NSNotification *)aNotification {
    
//#ifdef WINDOWS
//    OBJCEnableMsgTracing();
//#endif

    NSTextStorage *textStorage;
    NSLayoutManager *layoutManager;
    NSTextContainer *textContainer;
    NSTextView *textView;
    
    NSRect windowRect = (NSRect){{0,0},{340,180}};
    
    window = [[[NSWindow alloc] initWithContentRect:windowRect
                                          styleMask:(NSTitledWindowMask |
                                                     NSClosableWindowMask |
                                                     NSMiniaturizableWindowMask |
                                                     NSResizableWindowMask)
                                            backing:NSBackingStoreBuffered
                                              defer:YES]
              retain];
    
    Issue492WindowDelegate *delegate = [[Issue492WindowDelegate alloc] init];
    delegate.window = window;
    [window setDelegate:delegate];
    
    NSRect screenFrame = [[NSScreen mainScreen] frame];
    [window setFrameTopLeftPoint:(NSPoint){100,screenFrame.size.height-100}];

    textStorage = [[NSTextStorage alloc] initWithString:@"This is a test."];
    [textStorage setFont:[NSFont fontWithName:@"Courier New" size:12.0]];
    layoutManager = [[NSLayoutManager alloc] init];
    textContainer = [[NSTextContainer alloc] initWithContainerSize:windowRect.size];
    
    [textStorage addLayoutManager:layoutManager];
    [layoutManager release];
    
    [layoutManager addTextContainer:textContainer];
    [textContainer release];
    
    textView = [[NSTextView alloc] initWithFrame:windowRect textContainer:textContainer];
        
    [window setTitle:@"Test Window"];
    [window setContentView:textView];
    [textView release];
    [window performSelectorOnMainThread: @selector(makeKeyAndOrderFront:)
                             withObject:nil
                          waitUntilDone:NO];
    
//#ifdef WINDOWS
//    OBJCDisableMsgTracing();
//#endif    
}

@end
