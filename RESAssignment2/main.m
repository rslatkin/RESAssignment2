//
//  main.m
//  RESAssignment2
//
//  Created by Robert Slatkin on 2/3/15.
//  Copyright (c) 2015 Robert Slatkin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RESItem.h"
#import "RESContainer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Create a mutable array object, store its address in itmes variable
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            RESItem *item = [RESItem randomItem];
            [items addObject:item];
        }
        
        for (RESItem *item in items) {
            NSLog(@"%@", item);
        }
        
        RESContainer *container = [[RESContainer alloc] initWithContainerName:@"Random Container" valueInDollars:25];
        for (RESItem *item in items)
        {
            [container.subItems addObject:item];
            NSLog(@"%@", container);
        }
        
        // Destroy the mutable array object
        items = nil;
        
    }
    return 0;
}
