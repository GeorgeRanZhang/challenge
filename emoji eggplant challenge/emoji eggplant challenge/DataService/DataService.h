//
//  DataService.h
//  emoji eggplant challenge
//
//  Created by RAN ZHANG on 2/02/20.
//  Copyright © 2020 RAN ZHANG. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@protocol DataServiceDelegate;
@interface DataService : NSObject
@property (nonatomic,unsafe_unretained) id<DataServiceDelegate> delegate;

- (void)requestCocktails: (NSString *)ingredient;


@end

@protocol DataServiceDelegate <NSObject> //As the response is reqired, I created delegate to restric call back

@required

- (void)callBackSuccessed:(NSArray *)responseDic;
- (void)callBackError;

@end

NS_ASSUME_NONNULL_END
