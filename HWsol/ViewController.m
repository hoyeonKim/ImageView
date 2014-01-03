//
//  ViewController.m
//  HWsol
//
//  Created by SDT-1 on 2014. 1. 2..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSInteger _currentimageindex;
    
}
@property (weak, nonatomic) IBOutlet UIImageView *imgview;

@end

@implementation ViewController
- (IBAction)nxtbtn:(id)sender {
    _currentimageindex++;
    if(_currentimageindex == 3){
        [sender setEnabled:NO];
    }
    [self change];
}
- (IBAction)prevbtn:(id)sender {
    _currentimageindex--;
    
    if(_currentimageindex == 0){
        [sender setEnabled:NO];
    }
    
        [self change];
}

-(void) change{
    NSString *carName = [NSString stringWithFormat:@"c%d",(int) _currentimageindex];
    NSString *imagePath =[[NSBundle mainBundle] pathForResource:carName ofType:@"jpg"];
    
    UIImage *currentImage = [UIImage imageWithContentsOfFile:imagePath];
    self.imgview.image = currentImage;
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _currentimageindex=1;
    [self change];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
