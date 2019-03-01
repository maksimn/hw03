//
//  Granny.h
//  BorshDelegate
//
//  Created by Ilya Lunkin on 28/02/2019.
//  Copyright © 2019 Sberbank. All rights reserved.
//

#import "BorshDelegate.h"


/**
 Класс, представляющий бабушку, которая может накормить любого человека,
 умеющего взаимодействовать с борщом, и помыть за ним посуду.
 */
@interface Granny : NSObject

@property (nonatomic, weak, nullable) id<BorshDelegate> borshDelegate;	/**< текущий делегат бабушки, которому будет предложено отведать борщ */

/**
 Приготовить и подать обед.
 */
- (void)serveLunch;

@end
