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

#import "UIImageView+WebCache.h"
#import "CocktailDetailViewController.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource,DataServiceDelegate>
{
    DataService *mDataService;//This is to do the request and response from server
    NSArray *cocktails;// Create a dictionary to store the response data
    NSCharacterSet *myCharSet;
    
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
    cocktails = [[NSArray alloc]init]; //avoid null
    self.cocktailsTV.tableFooterView = [UIView new];//delete extra line
    myCharSet = [NSCharacterSet characterSetWithCharactersInString:@"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz "]; //for checking input
    self.cocktailsTV.keyboardDismissMode = UIScrollViewKeyboardDismissModeOnDrag;
    [self.cocktailsTV registerClass:[CocktailsTableViewCell class] forCellReuseIdentifier:@"CocktailsTableViewCell"];
    [self.cocktailsTV reloadData];

}

- (void)fetchCocktails:(NSString*) userInput{
    userInput = [userInput stringByReplacingOccurrencesOfString:@" " withString:@"%20"];//handling space
    [mDataService requestCocktails:userInput];
    [self checkIngredientTypingHandling];
    mDataService.delegate = self;
}

- (NSString *)checkIngredientTypingHandling{
    NSString *input=  self.ingredientTF.text;
    while([input characterAtIndex:0] == ' '){
        input = [input substringFromIndex:1]; // this loop is to handle user input space at first character
    }
    
    while([input containsString:@"  "]){//this is to avoid user input any two continue space
        input = [input stringByReplacingOccurrencesOfString:@"  " withString:@" "];
    }
    
    return input;
}

- (IBAction)findBtnTap:(id)sender {
    if([self.ingredientTF.text  isEqual: @""]){ //check if user input is null
        [self showAlert:@"No Ingrediant" withMessage:@"Please enter an ingrediant"];
        return;
    }
    [self fetchCocktails:self.ingredientTF.text];
}

- (IBAction)editingDidChange:(id)sender { //handle type error
    NSString *input = self.ingredientTF.text;
    if([input isEqual: @""]) return; //no value
    if([input isEqual: @" "]) input = @""; //check if user input space at first
    if ([input length] >= 1 && ![myCharSet characterIsMember:[input characterAtIndex:[input length]-1]]){
        //check if user input invalid character
        input = [input substringToIndex:[input length]-1];
    }
    input = [input stringByReplacingOccurrencesOfString:@"  " withString:@" "];//check two space
    input = [input stringByReplacingOccurrencesOfString:@". " withString:@" "];//check two space auto replace
    self.ingredientTF.text = input;
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
    CocktailsTableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"CocktailsTableViewCell" forIndexPath:indexPath];
    Cocktail *cocktail= [Cocktail modelObjectWithDictionary:[cocktails objectAtIndex:indexPath.row]];
    NSURL* url =  [NSURL URLWithString:cocktail.strDrinkThumb];
    [cell.imageView sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"download.png"]];//use SDWebImage to do the lazyload
    [cell.textLabel setText:cocktail.strDrink];
    cell.contentView.userInteractionEnabled = true;
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return cocktails.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfSections:(NSInteger)section
{
    return 1;
}

-(void)tableView:(nonnull UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    [self performSegueWithIdentifier:@"showDetail" sender:self];
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    [self.view endEditing:YES];
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Make sure your segue name in storyboard is the same as this line
    if ([[segue identifier] isEqualToString:@"showDetail"])
    {
        NSLog(@"called");
        //if you need to pass data to the next controller do it here
        NSIndexPath *indexPath = [self.cocktailsTV indexPathForSelectedRow];
        Cocktail *cocktail= [Cocktail modelObjectWithDictionary:[cocktails objectAtIndex:indexPath.row]];
        [segue.destinationViewController setTitle:cocktail.strDrink];
        CocktailDetailViewController* detailVC = [segue destinationViewController];
        detailVC.idDrink = cocktail.idDrink;
    }
}

- (void)callBackError {
    dispatch_async(dispatch_get_main_queue(), ^{
        //once received response. should go back to main thread to continue progress
        [self showAlert:@"Network Error" withMessage: @"Sorry, the network is temporary disabled, please try agian later"];
    });
    
}

- (void)callBackSuccessed:(nonnull NSArray *)sArray {
    //once received response. should go back to main thread to continue progress
    dispatch_async(dispatch_get_main_queue(), ^{
        self->cocktails = [sArray copy];//Block implicitly retains self
        if([sArray count] == 0){ //check if the response is null
            [self showAlert:@"No avaliable cocktails" withMessage:[NSString stringWithFormat: @"Sorry, no avaliable cocktails using %@",self.ingredientTF.text]];
        }
        [self.cocktailsTV reloadData];
    });
    
}


@end
