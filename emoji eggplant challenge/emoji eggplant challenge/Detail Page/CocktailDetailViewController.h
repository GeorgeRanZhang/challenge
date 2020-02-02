//
//  CocktailDetailViewController.h
//  emoji eggplant challenge
//
//  Created by RAN ZHANG on 3/02/20.
//  Copyright © 2020 RAN ZHANG. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CocktailDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *nameLb;
@property (nonatomic,copy) NSString * idDrink;
@end

NS_ASSUME_NONNULL_END
