//
//  RESContainer.m
//  RESAssignment2
//
//  Created by Robert Slatkin on 2/3/15.
//  Copyright (c) 2015 Robert Slatkin. All rights reserved.
//

#import "RESContainer.h"

@implementation RESContainer

- (instancetype)initWithContainerName:(NSString *)name valueInDollars:(int)value
{
    self = [super initWithItemName:name valueInDollars:value serialNumber:@""];
    
    if (self)
    {
        _subItems = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (NSMutableArray *)subItems
{
    return _subItems;
}

- (int)totalValueInDollars
{
    int valueOfSubItems = 0;
    for (RESItem *item in self.subItems)
    {
        valueOfSubItems = item.valueInDollars + valueOfSubItems;
    }
    
    return (valueOfSubItems + self.valueInDollars);
}


- (NSString *) description
{
    NSString *descriptionString =[[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d  , ",
                                  self.itemName,
                                  self.subItems,
                                  self.totalValueInDollars];
    
    return descriptionString;
}
@end
