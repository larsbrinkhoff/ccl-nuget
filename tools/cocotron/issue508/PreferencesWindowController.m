//
//  PreferencesWindowController.m
//  issueXXX
//
//  Created by Gary Palter on 2/18/10.
//  Copyright 2010 Clozure Associates. All rights reserved.
//

#import "PreferencesWindowController.h"
#import "FontToNameTransformer.h"


@interface PreferencesWindowController (private)
- (void)showGeneralPrefs:(id)sender;
- (void)showAppearancePrefs:(id)sender;
- (void)showDocumentationPrefs:(id)sender;
- (void)showEncodingsPrefs:(id)sender;
- (void)setContent:(PreferencesView *)view;
@end


@implementation PreferencesWindowController

- (id)init {
    [NSValueTransformer setValueTransformer:[[FontToNameTransformer alloc] init]
                                    forName:@"FontToName"];
    self = [self initWithWindowNibName:@"preferences"];
    return self;
}

- (void)windowDidLoad {
    NSWindow *window = [self window];
    toolbar = [[NSToolbar alloc] initWithIdentifier:@"preferences-window-toolbar"];
    toolbar.delegate = self;
    [toolbar setSelectedItemIdentifier:@"appearance"];
    [window setToolbar:toolbar];
    [window setShowsToolbarButton:NO];
    [self showAppearancePrefs:nil];
}

- (NSToolbarItem *)toolbar:(NSToolbar *)toolbar
     itemForItemIdentifier:(NSString *)itemIdentifier
 willBeInsertedIntoToolbar:(BOOL)willBeInserted {    
    NSToolbarItem *item;
    
    if ([itemIdentifier isEqualToString:@"general"]) {
        item = [[NSToolbarItem alloc] initWithItemIdentifier:itemIdentifier];
        [item setLabel:@"General"];
        [item setImage:[NSImage imageNamed:@"General"]];
        [item setTarget:self];
        [item setAction:@selector(showGeneralPrefs:)];
    }
    
    else if ([itemIdentifier isEqualToString:@"appearance"]) {
        item = [[NSToolbarItem alloc] initWithItemIdentifier:itemIdentifier];
        [item setLabel:@"Appearance"];
        [item setImage:[NSImage imageNamed:@"Appearance"]];
        [item setTarget:self];
        [item setAction:@selector(showAppearancePrefs:)];
    }

    else if ([itemIdentifier isEqualToString:@"documentation"]) {
        item = [[NSToolbarItem alloc] initWithItemIdentifier:itemIdentifier];
        [item setLabel:@"Documentation"];
        [item setImage:[NSImage imageNamed:@"Documentation"]];
        [item setTarget:self];
        [item setAction:@selector(showDocumentationPrefs:)];
    }

    else if ([itemIdentifier isEqualToString:@"encodings"]) {
        item = [[NSToolbarItem alloc] initWithItemIdentifier:itemIdentifier];
        [item setLabel:@"Encodings"];
        [item setImage:[NSImage imageNamed:@"Encodings"]];
        [item setTarget:self];
        [item setAction:@selector(showEncodingsPrefs:)];
    }
    
    else {
        NSLog(@"Unknown item identifier -- %@", itemIdentifier);
    }
    
    return item;    
}

- (NSArray *)toolbarDefaultItemIdentifiers:(NSToolbar *)toolbar {
    return [NSArray arrayWithObjects:@"general", @"appearance", @"documentation",
            @"encodings", nil];
}

- (NSArray *)toolbarAllowedItemIdentifiers:(NSToolbar *)toolbar {
    return [NSArray arrayWithObjects:@"general", @"appearance", @"documentation",
            @"encodings", nil];
}

- (NSArray *)toolbarSelectableItemIdentifiers:(NSToolbar *)toolbar {
    return [NSArray arrayWithObjects:@"general", @"appearance", @"documentation",
            @"encodings", nil];
}

- (void)showGeneralPrefs:(id)sender {
    [[self window] setTitle:@"General"];
    [self setContent:generalPrefs];
}

- (void)showAppearancePrefs:(id)sender {
    [[self window] setTitle:@"Appearance"];
    [self setContent:appearancePrefs];
}

- (void)showDocumentationPrefs:(id)sender {
    [[self window] setTitle:@"Documentation"];
    [self setContent:documentationPrefs];
}

- (void)showEncodingsPrefs:(id)sender {
    [[self window] setTitle:@"Encodings"];
    [self setContent:encodingsPrefs];
}

- (void)setContent:(PreferencesView *)view {
    NSWindow *window = [self window];
    [window setContentView:view];
    
    NSRect frame = [window frame];
    NSSize minSize = [window minSize];
    NSRect contentRect = [window contentRectForFrameRect:frame];
    
    CGFloat dy = view.height - contentRect.size.height;
    
    contentRect.origin.y -= dy;
    contentRect.size.height += dy;
    
    contentRect.size.width = (view.width > minSize.width) ? view.width : minSize.width;
    
    NSRect newFrame = [window frameRectForContentRect:contentRect];
    [window setFrame:newFrame display:YES animate:YES];
}


- (void)showFontPanel:(id)sender {
    NSLog(@"-[PreferencesWindowController showFontPanel:] invoked");
}

- (void)startSwankListener:(id)sender {
    NSLog(@"-[PreferencesWindowController startSwankListener:] invoked");
}

@end
