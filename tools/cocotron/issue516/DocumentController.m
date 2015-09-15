//
//  DocumentController.m
//  TrivialDocuments
//
//  Created by R. Matthew Emerson on 3/3/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "DocumentController.h"


@implementation DocumentController

- (void)removeDocument:(NSDocument *)document
{
    NSLog(@"removing document");
    [super removeDocument:document];
}

@end
