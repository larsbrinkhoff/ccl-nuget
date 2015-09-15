//
//  PreferencesView.m
//  issueXXX
//
//  Created by Gary Palter on 2/18/10.
//  Copyright 2010 Clozure Associates. All rights reserved.
//

#import "PreferencesView.h"


@implementation PreferencesView

@synthesize width, height;

- (void)awakeFromNib {
    NSRect frame = [self frame];
    width = frame.size.width;
    height = frame.size.height;
}

@end
