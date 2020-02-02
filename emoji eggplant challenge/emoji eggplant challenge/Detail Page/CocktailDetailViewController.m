//
//  CocktailDetailViewController.m
//  emoji eggplant challenge
//
//  Created by RAN ZHANG on 3/02/20.
//  Copyright © 2020 RAN ZHANG. All rights reserved.
//

#import "CocktailDetailViewController.h"

@interface CocktailDetailViewController ()

@end

@implementation CocktailDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"%@",self.idDrink);
    self.nameLb.text = self.idDrink;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
