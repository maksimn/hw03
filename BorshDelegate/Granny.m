//
//  Granny.m
//  BorshDelegate
//
//  Created by Ilya Lunkin on 28/02/2019.
//  Copyright © 2019 Sberbank. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Granny.h"

@interface Granny ()

-(void)cookLunch;

@end

@implementation Granny

- (void)serveLunch
{
	// приготовить обед
    [self cookLunch];
    
	// переложить работу по употреблению обеда делегату
    BOOL decision = [self.borshDelegate borshServed];
    
	// проверить решение делегата
	// исходя из решения вызывает или не вызывает метод для мытья посуды
    if (decision) {
        [self washDishes];
    }
}

- (void)washDishes
{
	// помыть посуду
    NSLog(@"\nПосуда помыта.\n");
}

- (void)cookLunch
{
    NSLog(@"\nБорщ приготовлен.\n");
}


@end
