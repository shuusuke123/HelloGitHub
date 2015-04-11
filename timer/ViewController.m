//
//  ViewController.m
//  timer
//
//  Created by 岡部　修典 on 2015/01/17.
//  Copyright (c) 2015年 岡部　修典. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)viewDidLoad;
{
    [super viewDidLoad];
    time=0.0;
    hanteiArray[0]=(2.65);
    hanteiArray[1]=(5.50);
    hanteiArray[2]=(7.25);
    hanteiArray[3]=(8.69);
    hanteiArray[4]=(10.38);
    hanteiArray[5]=(12.02);
    hanteiArray[6]=(13.49);
    hanteiArray[7]=(15.14);
    hanteiArray[8]=(16.87);
    hanteiArray[9]=(18.16);
    
    timeLabel.text=[NSString stringWithFormat:@"%.2f",time];
    hanteiLabel.text=@"";
    
    timer=[NSTimer scheduledTimerWithTimeInterval:0.01
                                           target:self
                                         selector:@selector(up)
                                         userInfo:nil
                                          repeats:YES
           ];
    label[1]=[[UILabel alloc]initWithFrame
           :CGRectMake(0,0,50,50)];
    label[1].text=@"";
    label[1].font=
    [UIFont systemFontOfSize:50];
    [label[1] setBackgroundColor:[UIColor clearColor]];
    [self.view addSubview:label[1]];
    
    CGRect appFrame=
    [[UIScreen mainScreen]applicationFrame];
    speed=appFrame.size.height/1.2;


}
-(void)up
{
    time+=0.01;
    timeLabel.text=[NSString stringWithFormat:@"%.2f",time];
    for(int i=0;  i<10; i=i+1)
    
    if(hanteiArray[i]-1.2<=time)
    {}
    // Do any additional setup after loading the view, typically from a nib.

}
    // Dispose of any resources that can be recreated.

-(NSString *)hantei:(float)number
{
    if(time>=number-0.05&&time<=number+0.05){
        return@"PERFECT!!";
    }else if(time>=number-0.10&&time<=number+0.10)
    {
    return@"GREAT!";
    }else if(time>=number-0.15&&time<=number+0.15)
    {
        return@"GOOD";
    }else{
        return@"BAD";

    }
}
-(IBAction)pushButton{
    for(int i=0; i<10;i=i+1)
    {
        hanteiLabel.text = [self hantei:hanteiArray[i]];
    }
}




@end