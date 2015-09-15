//
//  FontToNameTransformer.m
//  issueXXX
//
//  Created by Gary Palter on 2/18/10.
//  Copyright 2010 Clozure Associates. All rights reserved.
//

#import "FontToNameTransformer.h"


@implementation FontToNameTransformer

+(Class) transformedValueClass
{
    return [NSString class];
}

+(BOOL) allowReverseTransformation
{
    return NO;
}

-(NSString *) transformedValue:(NSData *)value
{
//  NSFont *font = [NSKeyedUnarchiver unarchiveObjectWithData:value];
//  return [NSString stringWithFormat:@"%@ %.0f", [font displayName], [font pointSize]];
    
    return @"Monaco 10";
}

@end
