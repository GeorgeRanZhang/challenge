//
//  DataService.m
//  emoji eggplant challenge
//
//  Created by RAN ZHANG on 2/02/20.
//  Copyright © 2020 RAN ZHANG. All rights reserved.
//

#import "DataService.h"
#import "Cocktail.h"
@implementation DataService


- (void)requestCocktails: (NSString *)ingredient{
    
    
    
    NSString *seachStr =[NSString stringWithFormat:@"https://www.thecocktaildb.com/api/json/v1/1/filter.php?i=%@",ingredient];
    //As the searchStr won't change until "i=", so I hardcode the first part. Should be constructed seperately to optimise the performance.
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:seachStr]
                                            completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                                                
                                                if (error)
                                                    [self.delegate callBackError];
                                                else {
                                                    NSMutableArray *mArray = [[NSMutableArray alloc] init];
                                                    NSDictionary *responseDic;
                                                    @try {
                                                      responseDic  = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
                                                        if ([responseDic count] == 0) {
                                                            [self.delegate callBackError];
                                                        }
                                                        else
                                                        {
                                                            for (Cocktail *cocktail in [responseDic objectForKey:@"drinks"]){
                                                                [mArray addObject:cocktail];
                                                                NSLog(@"%@",cocktail);
                                                            }
                                                            [self.delegate callBackSuccessed:mArray];
                                                        }
                                                    }
                                                    @catch (NSException * e) {
                                                        [self.delegate callBackError];
                                                    }
                                                    
                                                }
                                            }];
    [dataTask resume];
}


@end
