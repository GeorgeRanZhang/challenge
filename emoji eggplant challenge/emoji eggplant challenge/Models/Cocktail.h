//
//  Cocktail.h
//  emoji eggplant challenge
//
//  Created by RAN ZHANG on 2/02/20.
//  Copyright © 2020 RAN ZHANG. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Cocktail : NSObject

@property (nonatomic, copy) NSString *strDrink;
@property (nonatomic, copy) NSString *strDrinkThumb;
@property (nonatomic, copy) NSString *theIDDrink;
+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dictionary;
- (instancetype)initWithDictionary:(NSDictionary*)dictionary;
@end
