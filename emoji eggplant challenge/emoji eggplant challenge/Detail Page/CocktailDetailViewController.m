//
//  CocktailDetailViewController.m
//  emoji eggplant challenge
//
//  Created by RAN ZHANG on 3/02/20.
//  Copyright © 2020 RAN ZHANG. All rights reserved.
//

#import "CocktailDetailViewController.h"
#import "DataService.h"
#import "IngredientDetail.h"

@interface CocktailDetailViewController () <DataServiceDelegate>
{
    DataService *mDataService;
    IngredientDetail *mDetail;
}
@end

@implementation CocktailDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"%@",self.idDrink);
    self.nameLb.text = self.idDrink;
    [self initPage];
}


- (void)initPage{
    mDataService = [[DataService alloc]init]; //init mDataService and sign delegate to itself
    mDataService.delegate = self;
    [mDataService requestIngredientDetail:self.idDrink];
}


-(void)showAlert: (NSString *)title withMessage:(NSString *)message { //To clearify the code, refactory alert to a seperate function
    UIAlertController * alert = [UIAlertController
        alertControllerWithTitle:title
        message:message
        preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action)
    {
        //Do some thing here
        [alert dismissViewControllerAnimated:YES completion:nil];
        [self.presentedViewController presentingViewController];
    }]];
    [self presentViewController:alert animated:YES completion:nil];
    
}


- (void)callBackError {
    [self showAlert:@"Connection Error" withMessage:@"Sorry, we could not find information for this ingredient"];
}

- (void)callBackSuccessed:(nonnull NSArray *)responseDic {
    
    dispatch_async(dispatch_get_main_queue(), ^{
        IngredientDetail *ingredient= [IngredientDetail modelObjectWithDictionary:[responseDic objectAtIndex:0]];
        self.nameLb.text = [NSString stringWithFormat:@"%@",ingredient];
    });
    
}


@end
