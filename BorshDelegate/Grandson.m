//
//  Grandson.m
//  BorshDelegate
//
//  Created by Ilya Lunkin on 28/02/2019.
//  Copyright © 2019 Sberbank. All rights reserved.
//
#import <stdlib.h>
#import "Grandson.h"

@interface Grandson ()

- (void) eat;
- (void) refuseToEat;
+ (BOOL) randomFlag;

@end

@implementation Grandson

- (BOOL)borshServed
{
	// принять решение есть ли борщ (например, проверить, что текущее время от 14:00 до 16:00)
	// есть борщ при соблюдении условия
	// сообщить нужно ли мыть посуду, если борщ был съеден
    BOOL decision = [Grandson randomFlag];
    
    if (decision) {
        [self eat];
        
        return YES;
    }
    
    [self refuseToEat];

	return NO;
}

- (void) eat
{
    NSLog(@"\nБорщ съеден.\n");
}

- (void) refuseToEat
{
    NSLog(@"\nВнук отказался есть борщ.\n");
}

+ (BOOL) randomFlag
{
    return arc4random_uniform(2);
}

@end
