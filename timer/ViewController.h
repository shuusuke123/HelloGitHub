//
//  ViewController.h
//  timer
//
//  Created by 岡部　修典 on 2015/01/17.
//  Copyright (c) 2015年 岡部　修典. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UILabel *timeLabel;
    IBOutlet UILabel *hanteiLabel;
    
    float time;
    NSTimer *timer;
    
    float speed;
    UILabel *label[10];
    float hanteiArray[10];
}
-(IBAction)pushButton;
-(void)up;
-(NSString *)hantei:(float)number;

@end

