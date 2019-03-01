//
//  BorshDelegate.h
//  BorshDelegate
//
//  Created by Ilya Lunkin on 28/02/2019.
//  Copyright © 2019 Sberbank. All rights reserved.
//


/**
 Протокол делегирования "работы" по поеданию приготовленного борща.
 */
@protocol BorshDelegate <NSObject>

@optional

/**
 Оповещает о том, что борщ приготовлен и необходимо принять решение
 есть его или не есть.

 @return признак был съеден борщ или нет.
 */
- (BOOL)borshServed;

@end
