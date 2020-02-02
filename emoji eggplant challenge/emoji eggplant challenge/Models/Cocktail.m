//
//  Cocktail.m
//  emoji eggplant challenge
//
//  Created by RAN ZHANG on 2/02/20.
//  Copyright © 2020 RAN ZHANG. All rights reserved.
//

#import "Cocktail.h"

@implementation Cocktail

- (instancetype)initWithDictionary:(NSDictionary*)dictionary {
    if (self = [super init]) {
        if(self && [dictionary isKindOfClass:[NSDictionary class]]){
            self.strDrink = dictionary[@"strDrink"];
            self.strDrinkThumb = dictionary[@"strDrinkThumb"];
            self.theIDDrink = dictionary[@"theIDDrink"];
        }

    }
    return self;
}


@end
