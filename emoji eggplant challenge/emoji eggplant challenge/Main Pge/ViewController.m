//
//  ViewController.m
//  emoji eggplant challenge
//
//  Created by RAN ZHANG on 31/01/20.
//  Copyright © 2020 RAN ZHANG. All rights reserved.
//

#import "ViewController.h"
#import "CocktailsTableViewCell.h"
#import "DataService.h"
#import "Cocktail.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource,DataServiceDelegate>
{
    DataService *mDataService;//This is to do the request and response from server
    NSDictionary *mDictionary;// Create a dictionary to store the response data
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initPage]; //init
}

- (void)initPage{
    self.cocktailsBar.title = @"Cocktails"; //cause I use navigation Controller, therfore I set the navigation tile directly inside
    mDataService = [[DataService alloc]init]; //init mDataService and sign delegate to itself
    mDictionary = [[NSDictionary alloc]init]; //avoid null
}

-(void)fetchCocktails:(NSString*) userInput{
    [mDataService requestCocktails:userInput];
    
    mDataService.delegate = self;
}

- (IBAction)findBtnTap:(id)sender {
    if([self.ingredientTF.text  isEqual: @""]){ //check if user input is null
        [self showAlert:@"No Ingrediant" withMessage:@"Please enter an ingrediant"];
        return;
    }
    [self fetchCocktails:self.ingredientTF.text];
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


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    CocktailsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CocktailsTableViewCell" forIndexPath:indexPath];
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}
//
//- (void)encodeWithCoder:(nonnull NSCoder *)coder {
//    <#code#>
//}
//
//- (void)traitCollectionDidChange:(nullable UITraitCollection *)previousTraitCollection {
//    <#code#>
//}
//
//- (void)preferredContentSizeDidChangeForChildContentContainer:(nonnull id<UIContentContainer>)container {
//    <#code#>
//}
//
//- (CGSize)sizeForChildContentContainer:(nonnull id<UIContentContainer>)container withParentContainerSize:(CGSize)parentSize {
//    <#code#>
//}
//
//- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(nonnull id<UIContentContainer>)container {
//    <#code#>
//}
//
//- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(nonnull id<UIViewControllerTransitionCoordinator>)coordinator {
//    <#code#>
//}
//
//- (void)willTransitionToTraitCollection:(nonnull UITraitCollection *)newCollection withTransitionCoordinator:(nonnull id<UIViewControllerTransitionCoordinator>)coordinator {
//    <#code#>
//}
//
//- (void)didUpdateFocusInContext:(nonnull UIFocusUpdateContext *)context withAnimationCoordinator:(nonnull UIFocusAnimationCoordinator *)coordinator {
//    <#code#>
//}
//
//- (void)setNeedsFocusUpdate {
//    <#code#>
//}
//
//- (BOOL)shouldUpdateFocusInContext:(nonnull UIFocusUpdateContext *)context {
//    <#code#>
//}
//
//- (void)updateFocusIfNeeded {
//    <#code#>
//}


- (void)callBackError {
    dispatch_async(dispatch_get_main_queue(), ^{
        //once received response. should go back to main thread to continue progress
        [self showAlert:@"Network Error" withMessage: @"Sorry, the network is temporary disabled, please try agian later"];
    });
    
}

- (void)callBackSuccessed:(nonnull NSArray *)sArray {
    //once received response. should go back to main thread to continue progress
    dispatch_async(dispatch_get_main_queue(), ^{
        if([sArray count] == 0){ //check if the response is null
            [self showAlert:@"No avaliable cocktails" withMessage:[NSString stringWithFormat: @"Sorry, no avaliable cocktails using %@",self.ingredientTF.text]];
            return;
        }
    });
    
//    [self.cocktailsTV reloadData];
}


@end
