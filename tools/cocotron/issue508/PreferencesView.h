//
//  PreferencesView.h
//  issueXXX
//
//  Created by Gary Palter on 2/18/10.
//  Copyright 2010 Clozure Associates. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface PreferencesView : NSView {
    CGFloat width;
    CGFloat height;
}

@property (readonly, assign) CGFloat width;
@property (readonly, assign) CGFloat height;

@end
