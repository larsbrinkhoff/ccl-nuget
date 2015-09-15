//
//  WindowController.m
//  TrivialDocuments
//
//  Created by R. Matthew Emerson on 3/3/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "WindowController.h"


@implementation WindowController

- (void)dealloc
{
    NSLog(@"window controller dealloc");
    [super dealloc];
}

- init
{
    return [super initWithWindowNibName:@"MyDocument"];
}

- (void)windowWillClose:(NSNotification *)n
{
    NSLog(@"windowWillClose w = %@", [n object]);
}

@end
