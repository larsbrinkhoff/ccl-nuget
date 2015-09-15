//
//  PreferencesWindowController.h
//  issueXXX
//
//  Created by Gary Palter on 2/18/10.
//  Copyright 2010 Clozure Associates. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PreferencesView.h"


@interface PreferencesWindowController : NSWindowController
#ifndef WINDOWS
  <NSToolbarDelegate>
#endif
{
    NSToolbar *toolbar;
    IBOutlet PreferencesView *generalPrefs;
    IBOutlet PreferencesView *appearancePrefs;
    IBOutlet PreferencesView *documentationPrefs;
    IBOutlet PreferencesView *encodingsPrefs;
}

- (void)showFontPanel:(id)sender;
- (void)startSwankListener:(id)sender;

@end
