//
//  Issue405AppDelegate.m
//  issue405
//
//  Created by Gary Palter on 9/4/09.
//  Copyright 2009 Clozure Associates. All rights reserved.
//

#import "Issue405AppDelegate.h"
#import "Issue405WindowDelegate.h"
#import "Issue405WindowView.h"


@implementation Issue405AppDelegate

-(void) applicationDidFinishLaunching:(NSNotification *)aNotification {
    
//#ifdef WINDOWS
//    OBJCEnableMsgTracing();
//#endif
    
    [self performSelectorOnMainThread:@selector(createWindow) withObject:nil waitUntilDone:YES];

	NSImageView *column1;
	NSSlider *slider1, *slider2, *slider3;
		
	column1 = [[[NSImageView alloc] initWithFrame:(NSRect){{0,0},{100,500}}] autorelease];
	[contentView addSubview:column1];
	
	slider1 = [[[NSSlider alloc] initWithFrame:(NSRect){{0,0},{100,100}}] autorelease];
	[slider1 setMinValue:0.0];
	[slider1 setMaxValue:1.0];
	[column1 addSubview:slider1];
	
	slider2 = [[[NSSlider alloc] initWithFrame:(NSRect){{0,0},{100,100}}] autorelease];
	[slider2 setMinValue:0.0];
	[slider2 setMaxValue:1.0];
	[slider2 setNumberOfTickMarks:50];
	[column1 addSubview:slider2];
	
	slider3 = [[[NSSlider alloc] initWithFrame:(NSRect){{0,0},{100,100}}] autorelease];
	[slider3 setMinValue:0.0];
	[slider3 setMaxValue:1.0];
	[slider3 setNumberOfTickMarks:5];
	[column1 addSubview:slider3];
	
	[slider1 setFrameSize:(NSSize){316,30}];
	[slider2 setFrameSize:(NSSize){316,30}];
	[slider3 setFrameSize:(NSSize){316,30}];
	[slider1 setFrameOrigin:(NSPoint){0,156-30}];
	[slider2 setFrameOrigin:(NSPoint){0,156-93}];
	[slider3 setFrameOrigin:(NSPoint){0,156-156}];	
	
	[column1 setFrameSize:(NSSize){316,156}];
	[column1 setFrameOrigin:(NSPoint){12,12}];
    
    [self performSelectorOnMainThread:@selector(showWindow) withObject:nil waitUntilDone:YES];
    
//#ifdef WINDOWS
//    OBJCDisableMsgTracing();
//#endif    
}


-(void) createWindow
{
    window = [[[NSWindow alloc] initWithContentRect:(NSRect){{0,0},{340,180}}
                                          styleMask:(NSTitledWindowMask |
                                                     NSClosableWindowMask |
                                                     NSMiniaturizableWindowMask |
                                                     NSResizableWindowMask)
                                            backing:NSBackingStoreBuffered
                                              defer:YES]
              retain];
    
    Issue405WindowDelegate *delegate = [[Issue405WindowDelegate alloc] init];
    delegate.window = window;
    [window setDelegate:delegate];

    contentView = [[[Issue405WindowView alloc] init] retain];
	[window setContentView:contentView];
    
    NSRect screenFrame = [[NSScreen mainScreen] frame];
    [window setFrameTopLeftPoint:(NSPoint){100,screenFrame.size.height-100}];
    
	[window setTitle:@"Test Window"];
}


-(void) showWindow
{
    [window orderFront:nil];
}

@end
