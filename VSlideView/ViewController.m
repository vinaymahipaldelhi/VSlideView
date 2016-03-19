//
//  ViewController.m
//  VSlideView
//
//  Created by Parikshit Sawhney on 19/03/16.
//  Copyright © 2016 Vinay Mahipal. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self Fun_scroll];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




#pragma mark scrollView Start

UIScrollView* scrollView;

- (void)Fun_scroll
{
    
        // object
        // Now create a UIScrollView to hold the UIImageViews
    scrollView = [[UIScrollView alloc]
                  initWithFrame:CGRectMake(self.VIew_screen1.frame.origin.x, self.VIew_screen1.frame.origin.y,
                                           self.VIew_screen1.frame.size.width,
                                           self.VIew_screen1.frame.size.height)];
    
    scrollView.pagingEnabled = YES;
    
        //[CommonFunctions ShadowToView:scrollView];
    [scrollView setIndicatorStyle:UIScrollViewIndicatorStyleWhite];
    
    int numberOfViews = 2;
    
        //[self.view_events_near_you removeFromSuperview];
        // [self.view_myEvents removeFromSuperview];

    

    
    self.View_screen2.translatesAutoresizingMaskIntoConstraints = YES;
    
    self.View_screen2.frame = CGRectMake(self.VIew_screen1.frame.size.width, 0,
                                        self.View_screen2.frame.size.width,
                                        self.View_screen2.frame.size.height);
    
  
    [scrollView addSubview:self.VIew_screen1];
    [scrollView addSubview:self.View_screen2];
    
 
    
    scrollView.contentSize = CGSizeMake(numberOfViews * self.VIew_screen1.frame.size.width,
                                        self.VIew_screen1.frame.size.height);
    scrollView.pagingEnabled = YES;
    scrollView.showsHorizontalScrollIndicator = YES;
    
        // scrollView.layer.cornerRadius = 10.0;
    scrollView.layer.borderWidth = 1.0f;
    scrollView.layer.borderColor = [[UIColor lightGrayColor] CGColor];
    
    scrollView.tag = 123;
    
        // Finally, add the UIScrollView to the controller's view
    [self.view addSubview:scrollView];
    
    
    


    scrollView.delegate = self;
    
    

    
}
UIPageControl* pageControl;
int newPage;
- (void)scrollViewDidEndDecelerating:(UIScrollView*)scrollView1
{
    if (scrollView1.tag == 123)
        {
        
        int newOffset = scrollView.contentOffset.x;
        newPage = (int)(newOffset / (scrollView.frame.size.width));
        [pageControl setCurrentPage:newPage];
        
        [self ScrollIt];
       
        
   
    }
    
        // [self HandleScrollView];
}


-(void)ScrollIt
{
    if (newPage == 0) {
            //       scrollView.scrollEnabled=YES;
        self.view_line_1.backgroundColor = [UIColor whiteColor];
            //            [self.btn_overview setTitleColor:[UIColor whiteColor]
            //                                   forState:UIControlStateNormal];
        
        self.view_line_2.backgroundColor = [UIColor clearColor];
            //            [self.btn_photos setTitleColor:[UIColor colorWithRed:128.0f / 255.0f
            //                                                           green:198 / 255.0f
            //                                                            blue:213.0f / 255.0f
            //                                                           alpha:1]
            //                                  forState:UIControlStateNormal];
        
        
            //            [self.btn_map setTitleColor:[UIColor colorWithRed:128.0f / 255.0f
            //                                                           green:198 / 255.0f
            //                                                            blue:213.0f / 255.0f
            //                                                           alpha:1]
            //                                  forState:UIControlStateNormal];
            // [self.tbl_buddies reloadData];
    }
    else if (newPage == 1) {
        self.view_line_2.backgroundColor = [UIColor whiteColor];
            //            [self.btn_overview setTitleColor:[UIColor whiteColor]
            //                                   forState:UIControlStateNormal];
        
        self.view_line_1.backgroundColor = [UIColor clearColor];
    }
    
    
    if (newPage == 0) {
        self.VIew_screen1.hidden = NO;
        self.View_screen2.hidden = YES;
            // [self.tbl_buddies reloadData];
        
    }
    else if (newPage == 1) {
        self.View_screen2.hidden = NO;
        self.VIew_screen1.hidden = YES;
            //  [self.view_photos reloadData];
        
    }
    
}
- (IBAction)btn_1_click:(id)sender {
    
    newPage=0;
    
    [scrollView setContentOffset:CGPointMake(self.VIew_screen1.frame.origin.x,
                                             self.VIew_screen1.frame.origin.y)
                        animated:YES];

    
    
     [self ScrollIt];
}
- (IBAction)btn_2_click:(id)sender {
    
    newPage=1;
    
    [scrollView setContentOffset:CGPointMake(self.View_screen2.frame.origin.x,
                                             self.View_screen2.frame.origin.y)
                        animated:YES];

    
     [self ScrollIt];
}
@end
