//
//  Cocktail.h
//  emoji eggplant challenge
//
//  Created by RAN ZHANG on 2/02/20.
//  Copyright © 2020 RAN ZHANG. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Cocktail;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Object interfaces

@interface Cocktail : NSObject

@property (nonatomic, copy) NSString *strDrink;
@property (nonatomic, copy) NSString *strDrinkThumb;
@property (nonatomic, copy) NSString *theIDDrink;
@end

NS_ASSUME_NONNULL_END
