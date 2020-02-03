//
//  IngredientDetail.m
//  emoji eggplant challenge
//
//  Created by RAN ZHANG on 3/02/20.
//  Copyright © 2020 RAN ZHANG. All rights reserved.
//

#import "IngredientDetail.h"

NSString *const kIngredientDetailDateModified = @"dateModified";
NSString *const kIngredientDetailIdDrink = @"idDrink";
NSString *const kIngredientDetailStrAlcoholic = @"strAlcoholic";
NSString *const kIngredientDetailStrCategory = @"strCategory";
NSString *const kIngredientDetailStrCreativeCommonsConfirmed = @"strCreativeCommonsConfirmed";
NSString *const kIngredientDetailStrDrink = @"strDrink";
NSString *const kIngredientDetailStrDrinkAlternate = @"strDrinkAlternate";
NSString *const kIngredientDetailStrDrinkDE = @"strDrinkDE";
NSString *const kIngredientDetailStrDrinkES = @"strDrinkES";
NSString *const kIngredientDetailStrDrinkFR = @"strDrinkFR";
NSString *const kIngredientDetailStrDrinkThumb = @"strDrinkThumb";
NSString *const kIngredientDetailStrDrinkZHHANS = @"strDrinkZH-HANS";
NSString *const kIngredientDetailStrDrinkZHHANT = @"strDrinkZH-HANT";
NSString *const kIngredientDetailStrGlass = @"strGlass";
NSString *const kIngredientDetailStrIBA = @"strIBA";
NSString *const kIngredientDetailStrIngredient1 = @"strIngredient1";
NSString *const kIngredientDetailStrIngredient10 = @"strIngredient10";
NSString *const kIngredientDetailStrIngredient11 = @"strIngredient11";
NSString *const kIngredientDetailStrIngredient12 = @"strIngredient12";
NSString *const kIngredientDetailStrIngredient13 = @"strIngredient13";
NSString *const kIngredientDetailStrIngredient14 = @"strIngredient14";
NSString *const kIngredientDetailStrIngredient15 = @"strIngredient15";
NSString *const kIngredientDetailStrIngredient2 = @"strIngredient2";
NSString *const kIngredientDetailStrIngredient3 = @"strIngredient3";
NSString *const kIngredientDetailStrIngredient4 = @"strIngredient4";
NSString *const kIngredientDetailStrIngredient5 = @"strIngredient5";
NSString *const kIngredientDetailStrIngredient6 = @"strIngredient6";
NSString *const kIngredientDetailStrIngredient7 = @"strIngredient7";
NSString *const kIngredientDetailStrIngredient8 = @"strIngredient8";
NSString *const kIngredientDetailStrIngredient9 = @"strIngredient9";
NSString *const kIngredientDetailStrInstructions = @"strInstructions";
NSString *const kIngredientDetailStrInstructionsDE = @"strInstructionsDE";
NSString *const kIngredientDetailStrInstructionsES = @"strInstructionsES";
NSString *const kIngredientDetailStrInstructionsFR = @"strInstructionsFR";
NSString *const kIngredientDetailStrInstructionsZHHANS = @"strInstructionsZH-HANS";
NSString *const kIngredientDetailStrInstructionsZHHANT = @"strInstructionsZH-HANT";
NSString *const kIngredientDetailStrMeasure1 = @"strMeasure1";
NSString *const kIngredientDetailStrMeasure10 = @"strMeasure10";
NSString *const kIngredientDetailStrMeasure11 = @"strMeasure11";
NSString *const kIngredientDetailStrMeasure12 = @"strMeasure12";
NSString *const kIngredientDetailStrMeasure13 = @"strMeasure13";
NSString *const kIngredientDetailStrMeasure14 = @"strMeasure14";
NSString *const kIngredientDetailStrMeasure15 = @"strMeasure15";
NSString *const kIngredientDetailStrMeasure2 = @"strMeasure2";
NSString *const kIngredientDetailStrMeasure3 = @"strMeasure3";
NSString *const kIngredientDetailStrMeasure4 = @"strMeasure4";
NSString *const kIngredientDetailStrMeasure5 = @"strMeasure5";
NSString *const kIngredientDetailStrMeasure6 = @"strMeasure6";
NSString *const kIngredientDetailStrMeasure7 = @"strMeasure7";
NSString *const kIngredientDetailStrMeasure8 = @"strMeasure8";
NSString *const kIngredientDetailStrMeasure9 = @"strMeasure9";
NSString *const kIngredientDetailStrTags = @"strTags";
NSString *const kIngredientDetailStrVideo = @"strVideo";

@interface IngredientDetail ()
@end
@implementation IngredientDetail




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */
+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dictionary
{
    return [[self alloc]initWithDictionary:dictionary]; //this is to secure a space for the model and convert dictionary to it
}

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if(![dictionary[kIngredientDetailDateModified] isKindOfClass:[NSNull class]]){
        self.dateModified = dictionary[kIngredientDetailDateModified];
    }
    if(![dictionary[kIngredientDetailIdDrink] isKindOfClass:[NSNull class]]){
        self.idDrink = dictionary[kIngredientDetailIdDrink];
    }
    if(![dictionary[kIngredientDetailStrAlcoholic] isKindOfClass:[NSNull class]]){
        self.strAlcoholic = dictionary[kIngredientDetailStrAlcoholic];
    }
    if(![dictionary[kIngredientDetailStrCategory] isKindOfClass:[NSNull class]]){
        self.strCategory = dictionary[kIngredientDetailStrCategory];
    }
    if(![dictionary[kIngredientDetailStrCreativeCommonsConfirmed] isKindOfClass:[NSNull class]]){
        self.strCreativeCommonsConfirmed = dictionary[kIngredientDetailStrCreativeCommonsConfirmed];
    }
    if(![dictionary[kIngredientDetailStrDrink] isKindOfClass:[NSNull class]]){
        self.strDrink = dictionary[kIngredientDetailStrDrink];
    }
    if(![dictionary[kIngredientDetailStrDrinkAlternate] isKindOfClass:[NSNull class]]){
        self.strDrinkAlternate = dictionary[kIngredientDetailStrDrinkAlternate];
    }
    if(![dictionary[kIngredientDetailStrDrinkDE] isKindOfClass:[NSNull class]]){
        self.strDrinkDE = dictionary[kIngredientDetailStrDrinkDE];
    }
    if(![dictionary[kIngredientDetailStrDrinkES] isKindOfClass:[NSNull class]]){
        self.strDrinkES = dictionary[kIngredientDetailStrDrinkES];
    }
    if(![dictionary[kIngredientDetailStrDrinkFR] isKindOfClass:[NSNull class]]){
        self.strDrinkFR = dictionary[kIngredientDetailStrDrinkFR];
    }
    if(![dictionary[kIngredientDetailStrDrinkThumb] isKindOfClass:[NSNull class]]){
        self.strDrinkThumb = dictionary[kIngredientDetailStrDrinkThumb];
    }
    if(![dictionary[kIngredientDetailStrDrinkZHHANS] isKindOfClass:[NSNull class]]){
        self.strDrinkZHHANS = dictionary[kIngredientDetailStrDrinkZHHANS];
    }
    if(![dictionary[kIngredientDetailStrDrinkZHHANT] isKindOfClass:[NSNull class]]){
        self.strDrinkZHHANT = dictionary[kIngredientDetailStrDrinkZHHANT];
    }
    if(![dictionary[kIngredientDetailStrGlass] isKindOfClass:[NSNull class]]){
        self.strGlass = dictionary[kIngredientDetailStrGlass];
    }
    if(![dictionary[kIngredientDetailStrIBA] isKindOfClass:[NSNull class]]){
        self.strIBA = dictionary[kIngredientDetailStrIBA];
    }
    if(![dictionary[kIngredientDetailStrIngredient1] isKindOfClass:[NSNull class]]){
        self.strIngredient1 = dictionary[kIngredientDetailStrIngredient1];
    }
    if(![dictionary[kIngredientDetailStrIngredient10] isKindOfClass:[NSNull class]]){
        self.strIngredient10 = dictionary[kIngredientDetailStrIngredient10];
    }
    if(![dictionary[kIngredientDetailStrIngredient11] isKindOfClass:[NSNull class]]){
        self.strIngredient11 = dictionary[kIngredientDetailStrIngredient11];
    }
    if(![dictionary[kIngredientDetailStrIngredient12] isKindOfClass:[NSNull class]]){
        self.strIngredient12 = dictionary[kIngredientDetailStrIngredient12];
    }
    if(![dictionary[kIngredientDetailStrIngredient13] isKindOfClass:[NSNull class]]){
        self.strIngredient13 = dictionary[kIngredientDetailStrIngredient13];
    }
    if(![dictionary[kIngredientDetailStrIngredient14] isKindOfClass:[NSNull class]]){
        self.strIngredient14 = dictionary[kIngredientDetailStrIngredient14];
    }
    if(![dictionary[kIngredientDetailStrIngredient15] isKindOfClass:[NSNull class]]){
        self.strIngredient15 = dictionary[kIngredientDetailStrIngredient15];
    }
    if(![dictionary[kIngredientDetailStrIngredient2] isKindOfClass:[NSNull class]]){
        self.strIngredient2 = dictionary[kIngredientDetailStrIngredient2];
    }
    if(![dictionary[kIngredientDetailStrIngredient3] isKindOfClass:[NSNull class]]){
        self.strIngredient3 = dictionary[kIngredientDetailStrIngredient3];
    }
    if(![dictionary[kIngredientDetailStrIngredient4] isKindOfClass:[NSNull class]]){
        self.strIngredient4 = dictionary[kIngredientDetailStrIngredient4];
    }
    if(![dictionary[kIngredientDetailStrIngredient5] isKindOfClass:[NSNull class]]){
        self.strIngredient5 = dictionary[kIngredientDetailStrIngredient5];
    }
    if(![dictionary[kIngredientDetailStrIngredient6] isKindOfClass:[NSNull class]]){
        self.strIngredient6 = dictionary[kIngredientDetailStrIngredient6];
    }
    if(![dictionary[kIngredientDetailStrIngredient7] isKindOfClass:[NSNull class]]){
        self.strIngredient7 = dictionary[kIngredientDetailStrIngredient7];
    }
    if(![dictionary[kIngredientDetailStrIngredient8] isKindOfClass:[NSNull class]]){
        self.strIngredient8 = dictionary[kIngredientDetailStrIngredient8];
    }
    if(![dictionary[kIngredientDetailStrIngredient9] isKindOfClass:[NSNull class]]){
        self.strIngredient9 = dictionary[kIngredientDetailStrIngredient9];
    }
    if(![dictionary[kIngredientDetailStrInstructions] isKindOfClass:[NSNull class]]){
        self.strInstructions = dictionary[kIngredientDetailStrInstructions];
    }
    if(![dictionary[kIngredientDetailStrInstructionsDE] isKindOfClass:[NSNull class]]){
        self.strInstructionsDE = dictionary[kIngredientDetailStrInstructionsDE];
    }
    if(![dictionary[kIngredientDetailStrInstructionsES] isKindOfClass:[NSNull class]]){
        self.strInstructionsES = dictionary[kIngredientDetailStrInstructionsES];
    }
    if(![dictionary[kIngredientDetailStrInstructionsFR] isKindOfClass:[NSNull class]]){
        self.strInstructionsFR = dictionary[kIngredientDetailStrInstructionsFR];
    }
    if(![dictionary[kIngredientDetailStrInstructionsZHHANS] isKindOfClass:[NSNull class]]){
        self.strInstructionsZHHANS = dictionary[kIngredientDetailStrInstructionsZHHANS];
    }
    if(![dictionary[kIngredientDetailStrInstructionsZHHANT] isKindOfClass:[NSNull class]]){
        self.strInstructionsZHHANT = dictionary[kIngredientDetailStrInstructionsZHHANT];
    }
    if(![dictionary[kIngredientDetailStrMeasure1] isKindOfClass:[NSNull class]]){
        self.strMeasure1 = dictionary[kIngredientDetailStrMeasure1];
    }
    if(![dictionary[kIngredientDetailStrMeasure10] isKindOfClass:[NSNull class]]){
        self.strMeasure10 = dictionary[kIngredientDetailStrMeasure10];
    }
    if(![dictionary[kIngredientDetailStrMeasure11] isKindOfClass:[NSNull class]]){
        self.strMeasure11 = dictionary[kIngredientDetailStrMeasure11];
    }
    if(![dictionary[kIngredientDetailStrMeasure12] isKindOfClass:[NSNull class]]){
        self.strMeasure12 = dictionary[kIngredientDetailStrMeasure12];
    }
    if(![dictionary[kIngredientDetailStrMeasure13] isKindOfClass:[NSNull class]]){
        self.strMeasure13 = dictionary[kIngredientDetailStrMeasure13];
    }
    if(![dictionary[kIngredientDetailStrMeasure14] isKindOfClass:[NSNull class]]){
        self.strMeasure14 = dictionary[kIngredientDetailStrMeasure14];
    }
    if(![dictionary[kIngredientDetailStrMeasure15] isKindOfClass:[NSNull class]]){
        self.strMeasure15 = dictionary[kIngredientDetailStrMeasure15];
    }
    if(![dictionary[kIngredientDetailStrMeasure2] isKindOfClass:[NSNull class]]){
        self.strMeasure2 = dictionary[kIngredientDetailStrMeasure2];
    }
    if(![dictionary[kIngredientDetailStrMeasure3] isKindOfClass:[NSNull class]]){
        self.strMeasure3 = dictionary[kIngredientDetailStrMeasure3];
    }
    if(![dictionary[kIngredientDetailStrMeasure4] isKindOfClass:[NSNull class]]){
        self.strMeasure4 = dictionary[kIngredientDetailStrMeasure4];
    }
    if(![dictionary[kIngredientDetailStrMeasure5] isKindOfClass:[NSNull class]]){
        self.strMeasure5 = dictionary[kIngredientDetailStrMeasure5];
    }
    if(![dictionary[kIngredientDetailStrMeasure6] isKindOfClass:[NSNull class]]){
        self.strMeasure6 = dictionary[kIngredientDetailStrMeasure6];
    }
    if(![dictionary[kIngredientDetailStrMeasure7] isKindOfClass:[NSNull class]]){
        self.strMeasure7 = dictionary[kIngredientDetailStrMeasure7];
    }
    if(![dictionary[kIngredientDetailStrMeasure8] isKindOfClass:[NSNull class]]){
        self.strMeasure8 = dictionary[kIngredientDetailStrMeasure8];
    }
    if(![dictionary[kIngredientDetailStrMeasure9] isKindOfClass:[NSNull class]]){
        self.strMeasure9 = dictionary[kIngredientDetailStrMeasure9];
    }
    if(![dictionary[kIngredientDetailStrTags] isKindOfClass:[NSNull class]]){
        self.strTags = dictionary[kIngredientDetailStrTags];
    }
    if(![dictionary[kIngredientDetailStrVideo] isKindOfClass:[NSNull class]]){
        self.strVideo = dictionary[kIngredientDetailStrVideo];
    }
    return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
    NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
    if(self.dateModified != nil){
        dictionary[kIngredientDetailDateModified] = self.dateModified;
    }
    if(self.idDrink != nil){
        dictionary[kIngredientDetailIdDrink] = self.idDrink;
    }
    if(self.strAlcoholic != nil){
        dictionary[kIngredientDetailStrAlcoholic] = self.strAlcoholic;
    }
    if(self.strCategory != nil){
        dictionary[kIngredientDetailStrCategory] = self.strCategory;
    }
    if(self.strCreativeCommonsConfirmed != nil){
        dictionary[kIngredientDetailStrCreativeCommonsConfirmed] = self.strCreativeCommonsConfirmed;
    }
    if(self.strDrink != nil){
        dictionary[kIngredientDetailStrDrink] = self.strDrink;
    }
    if(self.strDrinkAlternate != nil){
        dictionary[kIngredientDetailStrDrinkAlternate] = self.strDrinkAlternate;
    }
    if(self.strDrinkDE != nil){
        dictionary[kIngredientDetailStrDrinkDE] = self.strDrinkDE;
    }
    if(self.strDrinkES != nil){
        dictionary[kIngredientDetailStrDrinkES] = self.strDrinkES;
    }
    if(self.strDrinkFR != nil){
        dictionary[kIngredientDetailStrDrinkFR] = self.strDrinkFR;
    }
    if(self.strDrinkThumb != nil){
        dictionary[kIngredientDetailStrDrinkThumb] = self.strDrinkThumb;
    }
    if(self.strDrinkZHHANS != nil){
        dictionary[kIngredientDetailStrDrinkZHHANS] = self.strDrinkZHHANS;
    }
    if(self.strDrinkZHHANT != nil){
        dictionary[kIngredientDetailStrDrinkZHHANT] = self.strDrinkZHHANT;
    }
    if(self.strGlass != nil){
        dictionary[kIngredientDetailStrGlass] = self.strGlass;
    }
    if(self.strIBA != nil){
        dictionary[kIngredientDetailStrIBA] = self.strIBA;
    }
    if(self.strIngredient1 != nil){
        dictionary[kIngredientDetailStrIngredient1] = self.strIngredient1;
    }
    if(self.strIngredient10 != nil){
        dictionary[kIngredientDetailStrIngredient10] = self.strIngredient10;
    }
    if(self.strIngredient11 != nil){
        dictionary[kIngredientDetailStrIngredient11] = self.strIngredient11;
    }
    if(self.strIngredient12 != nil){
        dictionary[kIngredientDetailStrIngredient12] = self.strIngredient12;
    }
    if(self.strIngredient13 != nil){
        dictionary[kIngredientDetailStrIngredient13] = self.strIngredient13;
    }
    if(self.strIngredient14 != nil){
        dictionary[kIngredientDetailStrIngredient14] = self.strIngredient14;
    }
    if(self.strIngredient15 != nil){
        dictionary[kIngredientDetailStrIngredient15] = self.strIngredient15;
    }
    if(self.strIngredient2 != nil){
        dictionary[kIngredientDetailStrIngredient2] = self.strIngredient2;
    }
    if(self.strIngredient3 != nil){
        dictionary[kIngredientDetailStrIngredient3] = self.strIngredient3;
    }
    if(self.strIngredient4 != nil){
        dictionary[kIngredientDetailStrIngredient4] = self.strIngredient4;
    }
    if(self.strIngredient5 != nil){
        dictionary[kIngredientDetailStrIngredient5] = self.strIngredient5;
    }
    if(self.strIngredient6 != nil){
        dictionary[kIngredientDetailStrIngredient6] = self.strIngredient6;
    }
    if(self.strIngredient7 != nil){
        dictionary[kIngredientDetailStrIngredient7] = self.strIngredient7;
    }
    if(self.strIngredient8 != nil){
        dictionary[kIngredientDetailStrIngredient8] = self.strIngredient8;
    }
    if(self.strIngredient9 != nil){
        dictionary[kIngredientDetailStrIngredient9] = self.strIngredient9;
    }
    if(self.strInstructions != nil){
        dictionary[kIngredientDetailStrInstructions] = self.strInstructions;
    }
    if(self.strInstructionsDE != nil){
        dictionary[kIngredientDetailStrInstructionsDE] = self.strInstructionsDE;
    }
    if(self.strInstructionsES != nil){
        dictionary[kIngredientDetailStrInstructionsES] = self.strInstructionsES;
    }
    if(self.strInstructionsFR != nil){
        dictionary[kIngredientDetailStrInstructionsFR] = self.strInstructionsFR;
    }
    if(self.strInstructionsZHHANS != nil){
        dictionary[kIngredientDetailStrInstructionsZHHANS] = self.strInstructionsZHHANS;
    }
    if(self.strInstructionsZHHANT != nil){
        dictionary[kIngredientDetailStrInstructionsZHHANT] = self.strInstructionsZHHANT;
    }
    if(self.strMeasure1 != nil){
        dictionary[kIngredientDetailStrMeasure1] = self.strMeasure1;
    }
    if(self.strMeasure10 != nil){
        dictionary[kIngredientDetailStrMeasure10] = self.strMeasure10;
    }
    if(self.strMeasure11 != nil){
        dictionary[kIngredientDetailStrMeasure11] = self.strMeasure11;
    }
    if(self.strMeasure12 != nil){
        dictionary[kIngredientDetailStrMeasure12] = self.strMeasure12;
    }
    if(self.strMeasure13 != nil){
        dictionary[kIngredientDetailStrMeasure13] = self.strMeasure13;
    }
    if(self.strMeasure14 != nil){
        dictionary[kIngredientDetailStrMeasure14] = self.strMeasure14;
    }
    if(self.strMeasure15 != nil){
        dictionary[kIngredientDetailStrMeasure15] = self.strMeasure15;
    }
    if(self.strMeasure2 != nil){
        dictionary[kIngredientDetailStrMeasure2] = self.strMeasure2;
    }
    if(self.strMeasure3 != nil){
        dictionary[kIngredientDetailStrMeasure3] = self.strMeasure3;
    }
    if(self.strMeasure4 != nil){
        dictionary[kIngredientDetailStrMeasure4] = self.strMeasure4;
    }
    if(self.strMeasure5 != nil){
        dictionary[kIngredientDetailStrMeasure5] = self.strMeasure5;
    }
    if(self.strMeasure6 != nil){
        dictionary[kIngredientDetailStrMeasure6] = self.strMeasure6;
    }
    if(self.strMeasure7 != nil){
        dictionary[kIngredientDetailStrMeasure7] = self.strMeasure7;
    }
    if(self.strMeasure8 != nil){
        dictionary[kIngredientDetailStrMeasure8] = self.strMeasure8;
    }
    if(self.strMeasure9 != nil){
        dictionary[kIngredientDetailStrMeasure9] = self.strMeasure9;
    }
    if(self.strTags != nil){
        dictionary[kIngredientDetailStrTags] = self.strTags;
    }
    if(self.strVideo != nil){
        dictionary[kIngredientDetailStrVideo] = self.strVideo;
    }
    return dictionary;

}

/**
 * Implementation of NSCoding encoding method
 */
/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
- (void)encodeWithCoder:(NSCoder *)aCoder
{
    if(self.dateModified != nil){
        [aCoder encodeObject:self.dateModified forKey:kIngredientDetailDateModified];
    }
    if(self.idDrink != nil){
        [aCoder encodeObject:self.idDrink forKey:kIngredientDetailIdDrink];
    }
    if(self.strAlcoholic != nil){
        [aCoder encodeObject:self.strAlcoholic forKey:kIngredientDetailStrAlcoholic];
    }
    if(self.strCategory != nil){
        [aCoder encodeObject:self.strCategory forKey:kIngredientDetailStrCategory];
    }
    if(self.strCreativeCommonsConfirmed != nil){
        [aCoder encodeObject:self.strCreativeCommonsConfirmed forKey:kIngredientDetailStrCreativeCommonsConfirmed];
    }
    if(self.strDrink != nil){
        [aCoder encodeObject:self.strDrink forKey:kIngredientDetailStrDrink];
    }
    if(self.strDrinkAlternate != nil){
        [aCoder encodeObject:self.strDrinkAlternate forKey:kIngredientDetailStrDrinkAlternate];
    }
    if(self.strDrinkDE != nil){
        [aCoder encodeObject:self.strDrinkDE forKey:kIngredientDetailStrDrinkDE];
    }
    if(self.strDrinkES != nil){
        [aCoder encodeObject:self.strDrinkES forKey:kIngredientDetailStrDrinkES];
    }
    if(self.strDrinkFR != nil){
        [aCoder encodeObject:self.strDrinkFR forKey:kIngredientDetailStrDrinkFR];
    }
    if(self.strDrinkThumb != nil){
        [aCoder encodeObject:self.strDrinkThumb forKey:kIngredientDetailStrDrinkThumb];
    }
    if(self.strDrinkZHHANS != nil){
        [aCoder encodeObject:self.strDrinkZHHANS forKey:kIngredientDetailStrDrinkZHHANS];
    }
    if(self.strDrinkZHHANT != nil){
        [aCoder encodeObject:self.strDrinkZHHANT forKey:kIngredientDetailStrDrinkZHHANT];
    }
    if(self.strGlass != nil){
        [aCoder encodeObject:self.strGlass forKey:kIngredientDetailStrGlass];
    }
    if(self.strIBA != nil){
        [aCoder encodeObject:self.strIBA forKey:kIngredientDetailStrIBA];
    }
    if(self.strIngredient1 != nil){
        [aCoder encodeObject:self.strIngredient1 forKey:kIngredientDetailStrIngredient1];
    }
    if(self.strIngredient10 != nil){
        [aCoder encodeObject:self.strIngredient10 forKey:kIngredientDetailStrIngredient10];
    }
    if(self.strIngredient11 != nil){
        [aCoder encodeObject:self.strIngredient11 forKey:kIngredientDetailStrIngredient11];
    }
    if(self.strIngredient12 != nil){
        [aCoder encodeObject:self.strIngredient12 forKey:kIngredientDetailStrIngredient12];
    }
    if(self.strIngredient13 != nil){
        [aCoder encodeObject:self.strIngredient13 forKey:kIngredientDetailStrIngredient13];
    }
    if(self.strIngredient14 != nil){
        [aCoder encodeObject:self.strIngredient14 forKey:kIngredientDetailStrIngredient14];
    }
    if(self.strIngredient15 != nil){
        [aCoder encodeObject:self.strIngredient15 forKey:kIngredientDetailStrIngredient15];
    }
    if(self.strIngredient2 != nil){
        [aCoder encodeObject:self.strIngredient2 forKey:kIngredientDetailStrIngredient2];
    }
    if(self.strIngredient3 != nil){
        [aCoder encodeObject:self.strIngredient3 forKey:kIngredientDetailStrIngredient3];
    }
    if(self.strIngredient4 != nil){
        [aCoder encodeObject:self.strIngredient4 forKey:kIngredientDetailStrIngredient4];
    }
    if(self.strIngredient5 != nil){
        [aCoder encodeObject:self.strIngredient5 forKey:kIngredientDetailStrIngredient5];
    }
    if(self.strIngredient6 != nil){
        [aCoder encodeObject:self.strIngredient6 forKey:kIngredientDetailStrIngredient6];
    }
    if(self.strIngredient7 != nil){
        [aCoder encodeObject:self.strIngredient7 forKey:kIngredientDetailStrIngredient7];
    }
    if(self.strIngredient8 != nil){
        [aCoder encodeObject:self.strIngredient8 forKey:kIngredientDetailStrIngredient8];
    }
    if(self.strIngredient9 != nil){
        [aCoder encodeObject:self.strIngredient9 forKey:kIngredientDetailStrIngredient9];
    }
    if(self.strInstructions != nil){
        [aCoder encodeObject:self.strInstructions forKey:kIngredientDetailStrInstructions];
    }
    if(self.strInstructionsDE != nil){
        [aCoder encodeObject:self.strInstructionsDE forKey:kIngredientDetailStrInstructionsDE];
    }
    if(self.strInstructionsES != nil){
        [aCoder encodeObject:self.strInstructionsES forKey:kIngredientDetailStrInstructionsES];
    }
    if(self.strInstructionsFR != nil){
        [aCoder encodeObject:self.strInstructionsFR forKey:kIngredientDetailStrInstructionsFR];
    }
    if(self.strInstructionsZHHANS != nil){
        [aCoder encodeObject:self.strInstructionsZHHANS forKey:kIngredientDetailStrInstructionsZHHANS];
    }
    if(self.strInstructionsZHHANT != nil){
        [aCoder encodeObject:self.strInstructionsZHHANT forKey:kIngredientDetailStrInstructionsZHHANT];
    }
    if(self.strMeasure1 != nil){
        [aCoder encodeObject:self.strMeasure1 forKey:kIngredientDetailStrMeasure1];
    }
    if(self.strMeasure10 != nil){
        [aCoder encodeObject:self.strMeasure10 forKey:kIngredientDetailStrMeasure10];
    }
    if(self.strMeasure11 != nil){
        [aCoder encodeObject:self.strMeasure11 forKey:kIngredientDetailStrMeasure11];
    }
    if(self.strMeasure12 != nil){
        [aCoder encodeObject:self.strMeasure12 forKey:kIngredientDetailStrMeasure12];
    }
    if(self.strMeasure13 != nil){
        [aCoder encodeObject:self.strMeasure13 forKey:kIngredientDetailStrMeasure13];
    }
    if(self.strMeasure14 != nil){
        [aCoder encodeObject:self.strMeasure14 forKey:kIngredientDetailStrMeasure14];
    }
    if(self.strMeasure15 != nil){
        [aCoder encodeObject:self.strMeasure15 forKey:kIngredientDetailStrMeasure15];
    }
    if(self.strMeasure2 != nil){
        [aCoder encodeObject:self.strMeasure2 forKey:kIngredientDetailStrMeasure2];
    }
    if(self.strMeasure3 != nil){
        [aCoder encodeObject:self.strMeasure3 forKey:kIngredientDetailStrMeasure3];
    }
    if(self.strMeasure4 != nil){
        [aCoder encodeObject:self.strMeasure4 forKey:kIngredientDetailStrMeasure4];
    }
    if(self.strMeasure5 != nil){
        [aCoder encodeObject:self.strMeasure5 forKey:kIngredientDetailStrMeasure5];
    }
    if(self.strMeasure6 != nil){
        [aCoder encodeObject:self.strMeasure6 forKey:kIngredientDetailStrMeasure6];
    }
    if(self.strMeasure7 != nil){
        [aCoder encodeObject:self.strMeasure7 forKey:kIngredientDetailStrMeasure7];
    }
    if(self.strMeasure8 != nil){
        [aCoder encodeObject:self.strMeasure8 forKey:kIngredientDetailStrMeasure8];
    }
    if(self.strMeasure9 != nil){
        [aCoder encodeObject:self.strMeasure9 forKey:kIngredientDetailStrMeasure9];
    }
    if(self.strTags != nil){
        [aCoder encodeObject:self.strTags forKey:kIngredientDetailStrTags];
    }
    if(self.strVideo != nil){
        [aCoder encodeObject:self.strVideo forKey:kIngredientDetailStrVideo];
    }

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    self.dateModified = [aDecoder decodeObjectForKey:kIngredientDetailDateModified];
    self.idDrink = [aDecoder decodeObjectForKey:kIngredientDetailIdDrink];
    self.strAlcoholic = [aDecoder decodeObjectForKey:kIngredientDetailStrAlcoholic];
    self.strCategory = [aDecoder decodeObjectForKey:kIngredientDetailStrCategory];
    self.strCreativeCommonsConfirmed = [aDecoder decodeObjectForKey:kIngredientDetailStrCreativeCommonsConfirmed];
    self.strDrink = [aDecoder decodeObjectForKey:kIngredientDetailStrDrink];
    self.strDrinkAlternate = [aDecoder decodeObjectForKey:kIngredientDetailStrDrinkAlternate];
    self.strDrinkDE = [aDecoder decodeObjectForKey:kIngredientDetailStrDrinkDE];
    self.strDrinkES = [aDecoder decodeObjectForKey:kIngredientDetailStrDrinkES];
    self.strDrinkFR = [aDecoder decodeObjectForKey:kIngredientDetailStrDrinkFR];
    self.strDrinkThumb = [aDecoder decodeObjectForKey:kIngredientDetailStrDrinkThumb];
    self.strDrinkZHHANS = [aDecoder decodeObjectForKey:kIngredientDetailStrDrinkZHHANS];
    self.strDrinkZHHANT = [aDecoder decodeObjectForKey:kIngredientDetailStrDrinkZHHANT];
    self.strGlass = [aDecoder decodeObjectForKey:kIngredientDetailStrGlass];
    self.strIBA = [aDecoder decodeObjectForKey:kIngredientDetailStrIBA];
    self.strIngredient1 = [aDecoder decodeObjectForKey:kIngredientDetailStrIngredient1];
    self.strIngredient10 = [aDecoder decodeObjectForKey:kIngredientDetailStrIngredient10];
    self.strIngredient11 = [aDecoder decodeObjectForKey:kIngredientDetailStrIngredient11];
    self.strIngredient12 = [aDecoder decodeObjectForKey:kIngredientDetailStrIngredient12];
    self.strIngredient13 = [aDecoder decodeObjectForKey:kIngredientDetailStrIngredient13];
    self.strIngredient14 = [aDecoder decodeObjectForKey:kIngredientDetailStrIngredient14];
    self.strIngredient15 = [aDecoder decodeObjectForKey:kIngredientDetailStrIngredient15];
    self.strIngredient2 = [aDecoder decodeObjectForKey:kIngredientDetailStrIngredient2];
    self.strIngredient3 = [aDecoder decodeObjectForKey:kIngredientDetailStrIngredient3];
    self.strIngredient4 = [aDecoder decodeObjectForKey:kIngredientDetailStrIngredient4];
    self.strIngredient5 = [aDecoder decodeObjectForKey:kIngredientDetailStrIngredient5];
    self.strIngredient6 = [aDecoder decodeObjectForKey:kIngredientDetailStrIngredient6];
    self.strIngredient7 = [aDecoder decodeObjectForKey:kIngredientDetailStrIngredient7];
    self.strIngredient8 = [aDecoder decodeObjectForKey:kIngredientDetailStrIngredient8];
    self.strIngredient9 = [aDecoder decodeObjectForKey:kIngredientDetailStrIngredient9];
    self.strInstructions = [aDecoder decodeObjectForKey:kIngredientDetailStrInstructions];
    self.strInstructionsDE = [aDecoder decodeObjectForKey:kIngredientDetailStrInstructionsDE];
    self.strInstructionsES = [aDecoder decodeObjectForKey:kIngredientDetailStrInstructionsES];
    self.strInstructionsFR = [aDecoder decodeObjectForKey:kIngredientDetailStrInstructionsFR];
    self.strInstructionsZHHANS = [aDecoder decodeObjectForKey:kIngredientDetailStrInstructionsZHHANS];
    self.strInstructionsZHHANT = [aDecoder decodeObjectForKey:kIngredientDetailStrInstructionsZHHANT];
    self.strMeasure1 = [aDecoder decodeObjectForKey:kIngredientDetailStrMeasure1];
    self.strMeasure10 = [aDecoder decodeObjectForKey:kIngredientDetailStrMeasure10];
    self.strMeasure11 = [aDecoder decodeObjectForKey:kIngredientDetailStrMeasure11];
    self.strMeasure12 = [aDecoder decodeObjectForKey:kIngredientDetailStrMeasure12];
    self.strMeasure13 = [aDecoder decodeObjectForKey:kIngredientDetailStrMeasure13];
    self.strMeasure14 = [aDecoder decodeObjectForKey:kIngredientDetailStrMeasure14];
    self.strMeasure15 = [aDecoder decodeObjectForKey:kIngredientDetailStrMeasure15];
    self.strMeasure2 = [aDecoder decodeObjectForKey:kIngredientDetailStrMeasure2];
    self.strMeasure3 = [aDecoder decodeObjectForKey:kIngredientDetailStrMeasure3];
    self.strMeasure4 = [aDecoder decodeObjectForKey:kIngredientDetailStrMeasure4];
    self.strMeasure5 = [aDecoder decodeObjectForKey:kIngredientDetailStrMeasure5];
    self.strMeasure6 = [aDecoder decodeObjectForKey:kIngredientDetailStrMeasure6];
    self.strMeasure7 = [aDecoder decodeObjectForKey:kIngredientDetailStrMeasure7];
    self.strMeasure8 = [aDecoder decodeObjectForKey:kIngredientDetailStrMeasure8];
    self.strMeasure9 = [aDecoder decodeObjectForKey:kIngredientDetailStrMeasure9];
    self.strTags = [aDecoder decodeObjectForKey:kIngredientDetailStrTags];
    self.strVideo = [aDecoder decodeObjectForKey:kIngredientDetailStrVideo];
    return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
    IngredientDetail *copy = [IngredientDetail new];

    copy.dateModified = [self.dateModified copy];
    copy.idDrink = [self.idDrink copy];
    copy.strAlcoholic = [self.strAlcoholic copy];
    copy.strCategory = [self.strCategory copy];
    copy.strCreativeCommonsConfirmed = [self.strCreativeCommonsConfirmed copy];
    copy.strDrink = [self.strDrink copy];
    copy.strDrinkAlternate = [self.strDrinkAlternate copy];
    copy.strDrinkDE = [self.strDrinkDE copy];
    copy.strDrinkES = [self.strDrinkES copy];
    copy.strDrinkFR = [self.strDrinkFR copy];
    copy.strDrinkThumb = [self.strDrinkThumb copy];
    copy.strDrinkZHHANS = [self.strDrinkZHHANS copy];
    copy.strDrinkZHHANT = [self.strDrinkZHHANT copy];
    copy.strGlass = [self.strGlass copy];
    copy.strIBA = [self.strIBA copy];
    copy.strIngredient1 = [self.strIngredient1 copy];
    copy.strIngredient10 = [self.strIngredient10 copy];
    copy.strIngredient11 = [self.strIngredient11 copy];
    copy.strIngredient12 = [self.strIngredient12 copy];
    copy.strIngredient13 = [self.strIngredient13 copy];
    copy.strIngredient14 = [self.strIngredient14 copy];
    copy.strIngredient15 = [self.strIngredient15 copy];
    copy.strIngredient2 = [self.strIngredient2 copy];
    copy.strIngredient3 = [self.strIngredient3 copy];
    copy.strIngredient4 = [self.strIngredient4 copy];
    copy.strIngredient5 = [self.strIngredient5 copy];
    copy.strIngredient6 = [self.strIngredient6 copy];
    copy.strIngredient7 = [self.strIngredient7 copy];
    copy.strIngredient8 = [self.strIngredient8 copy];
    copy.strIngredient9 = [self.strIngredient9 copy];
    copy.strInstructions = [self.strInstructions copy];
    copy.strInstructionsDE = [self.strInstructionsDE copy];
    copy.strInstructionsES = [self.strInstructionsES copy];
    copy.strInstructionsFR = [self.strInstructionsFR copy];
    copy.strInstructionsZHHANS = [self.strInstructionsZHHANS copy];
    copy.strInstructionsZHHANT = [self.strInstructionsZHHANT copy];
    copy.strMeasure1 = [self.strMeasure1 copy];
    copy.strMeasure10 = [self.strMeasure10 copy];
    copy.strMeasure11 = [self.strMeasure11 copy];
    copy.strMeasure12 = [self.strMeasure12 copy];
    copy.strMeasure13 = [self.strMeasure13 copy];
    copy.strMeasure14 = [self.strMeasure14 copy];
    copy.strMeasure15 = [self.strMeasure15 copy];
    copy.strMeasure2 = [self.strMeasure2 copy];
    copy.strMeasure3 = [self.strMeasure3 copy];
    copy.strMeasure4 = [self.strMeasure4 copy];
    copy.strMeasure5 = [self.strMeasure5 copy];
    copy.strMeasure6 = [self.strMeasure6 copy];
    copy.strMeasure7 = [self.strMeasure7 copy];
    copy.strMeasure8 = [self.strMeasure8 copy];
    copy.strMeasure9 = [self.strMeasure9 copy];
    copy.strTags = [self.strTags copy];
    copy.strVideo = [self.strVideo copy];

    return copy;
}
@end
