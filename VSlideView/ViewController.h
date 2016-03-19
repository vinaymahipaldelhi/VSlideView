//
//  ViewController.h
//  VSlideView
//
//  Created by Parikshit Sawhney on 19/03/16.
//  Copyright © 2016 Vinay Mahipal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *btn_1;

- (IBAction)btn_1_click:(id)sender;
@property (weak, nonatomic) IBOutlet UIView *view_line_1;
@property (weak, nonatomic) IBOutlet UIButton *btn_2;
- (IBAction)btn_2_click:(id)sender;
@property (weak, nonatomic) IBOutlet UIView *view_line_2;
@property (weak, nonatomic) IBOutlet UIView *VIew_screen1;
@property (weak, nonatomic) IBOutlet UIView *View_screen2;

@end

