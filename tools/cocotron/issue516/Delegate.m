//
//  Delegate.m
//  TrivialDocuments
//
//  Created by R. Matthew Emerson on 3/3/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Delegate.h"
#import "DocumentController.h"

@implementation Delegate

- (void)applicationWillFinishLaunching:(NSNotification *)n
{
    NSLog(@"applicationWillFinishLaunching");
    /* This will become the shared document controller. */
    [[DocumentController alloc] init];
}

@end
