//
//  IngredientDetail.h
//  emoji eggplant challenge
//
//  Created by RAN ZHANG on 3/02/20.
//  Copyright © 2020 RAN ZHANG. All rights reserved.
//
#import <UIKit/UIKit.h>

@interface IngredientDetail : NSObject

@property (nonatomic, strong) NSString * dateModified;
@property (nonatomic, strong) NSString * idDrink;
@property (nonatomic, strong) NSString * strAlcoholic;
@property (nonatomic, strong) NSString * strCategory;
@property (nonatomic, strong) NSString * strCreativeCommonsConfirmed;
@property (nonatomic, strong) NSString * strDrink;
@property (nonatomic, strong) NSObject * strDrinkAlternate;
@property (nonatomic, strong) NSObject * strDrinkDE;
@property (nonatomic, strong) NSObject * strDrinkES;
@property (nonatomic, strong) NSObject * strDrinkFR;
@property (nonatomic, strong) NSString * strDrinkThumb;
@property (nonatomic, strong) NSObject * strDrinkZHHANS;
@property (nonatomic, strong) NSObject * strDrinkZHHANT;
@property (nonatomic, strong) NSString * strGlass;
@property (nonatomic, strong) NSString * strIBA;
@property (nonatomic, strong) NSString * strIngredient1;
@property (nonatomic, strong) NSObject * strIngredient10;
@property (nonatomic, strong) NSObject * strIngredient11;
@property (nonatomic, strong) NSObject * strIngredient12;
@property (nonatomic, strong) NSObject * strIngredient13;
@property (nonatomic, strong) NSObject * strIngredient14;
@property (nonatomic, strong) NSObject * strIngredient15;
@property (nonatomic, strong) NSString * strIngredient2;
@property (nonatomic, strong) NSString * strIngredient3;
@property (nonatomic, strong) NSString * strIngredient4;
@property (nonatomic, strong) NSObject * strIngredient5;
@property (nonatomic, strong) NSObject * strIngredient6;
@property (nonatomic, strong) NSObject * strIngredient7;
@property (nonatomic, strong) NSObject * strIngredient8;
@property (nonatomic, strong) NSObject * strIngredient9;
@property (nonatomic, strong) NSString * strInstructions;
@property (nonatomic, strong) NSString * strInstructionsDE;
@property (nonatomic, strong) NSObject * strInstructionsES;
@property (nonatomic, strong) NSObject * strInstructionsFR;
@property (nonatomic, strong) NSObject * strInstructionsZHHANS;
@property (nonatomic, strong) NSObject * strInstructionsZHHANT;
@property (nonatomic, strong) NSString * strMeasure1;
@property (nonatomic, strong) NSObject * strMeasure10;
@property (nonatomic, strong) NSObject * strMeasure11;
@property (nonatomic, strong) NSObject * strMeasure12;
@property (nonatomic, strong) NSObject * strMeasure13;
@property (nonatomic, strong) NSObject * strMeasure14;
@property (nonatomic, strong) NSObject * strMeasure15;
@property (nonatomic, strong) NSString * strMeasure2;
@property (nonatomic, strong) NSString * strMeasure3;
@property (nonatomic, strong) NSObject * strMeasure4;
@property (nonatomic, strong) NSObject * strMeasure5;
@property (nonatomic, strong) NSObject * strMeasure6;
@property (nonatomic, strong) NSObject * strMeasure7;
@property (nonatomic, strong) NSObject * strMeasure8;
@property (nonatomic, strong) NSObject * strMeasure9;
@property (nonatomic, strong) NSString * strTags;
@property (nonatomic, strong) NSObject * strVideo;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;
+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dictionary;
-(NSDictionary *)toDictionary;
@end
