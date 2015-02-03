//
//  RESContainer.h
//  RESAssignment2
//
//  Created by Robert Slatkin on 2/3/15.
//  Copyright (c) 2015 Robert Slatkin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RESItem.h"

@interface RESContainer : RESItem
{
    NSMutableArray *_subItems;
}

- (instancetype)initWithContainerName:(NSString *)name valueInDollars:(int)value;

- (NSMutableArray *)subItems;

- (int)totalValueInDollars;

@end
