//
//  main.m
//  issueXXX
//
//  Created by Gary Palter on 1/15/10.
//  Copyright 2010 Clozure Associates. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "FontToNameTransformer.h"

int main(int argc, char *argv[])
{
    [NSValueTransformer setValueTransformer:[[FontToNameTransformer alloc] init]
                                    forName:@"FontToName"];
    return NSApplicationMain(argc,  (const char **) argv);
}
