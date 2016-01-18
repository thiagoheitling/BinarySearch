//
//  main.m
//  BinarySearch
//
//  Created by Thiago Heitling on 2016-01-12.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import <Foundation/Foundation.h>

int binarySearch(int inputTarget, NSArray *inputSortedArray) {
    
    NSArray *sortedArray = inputSortedArray;
    int target = inputTarget;
    int min = 0;
    int max = (int)[sortedArray count];
    int midPointIndex;
    while((min + 1) < max) {
        midPointIndex = (min + max)/2;
        if (target < [[sortedArray objectAtIndex:midPointIndex]intValue]) {
            max = midPointIndex;
        }
        else {
            min = midPointIndex;
        }
    }
    int result;
    if (target == [sortedArray[min]intValue]) {
        result = min;
        NSLog(@"Target found at index %i", result);
    }
    else {
        result = -1;
        NSLog(@"Target not found");
    }
    return result;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        int target = 7;
        NSArray *sortedArray = @[@1, @3, @4, @5, @7, @8, @9, @11, @12];
        binarySearch(target, sortedArray);
        
        return 0;
    }
}
