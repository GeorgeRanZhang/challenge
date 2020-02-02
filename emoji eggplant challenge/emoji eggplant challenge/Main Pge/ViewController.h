//
//  ViewController.h
//  emoji eggplant challenge
//
//  Created by RAN ZHANG on 31/01/20.
//  Copyright © 2020 RAN ZHANG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UINavigationItem *cocktailsBar;
@property (weak, nonatomic) IBOutlet UITextField *ingredientTF;
@property (weak, nonatomic) IBOutlet UIButton *findBtn;
@property (weak, nonatomic) IBOutlet UITableView *cocktailsTV;

- (IBAction)findBtnTap:(id)sender;
- (IBAction)editingDidChange:(id)sender;


@end

