//
//  ViewController.m
//  NSAlert
//
//  Created by srinivas on 11/25/15.
//  Copyright © 2015 Microexcel. All rights reserved.
//

#import "ViewController.h"
#import "NSAlertController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)ShowButtonTouched:(UIButton *)sender {
    [NSAlertController alertViewTittle:@"Test Massage" andMessage:@"Welcome to hello world" addButtons:@[@"Ok",@"Cancel"]andDelegage:self];
    [NSAlertController show:self];
}

-(void)NSAletClickedButtonAtindex:(NSInteger)index andButton:(UIAlertAction *)alertAction {
    
    switch (index) {
        case 0:
            NSLog(@"This is 0th index");
            break;
         case 1:
             NSLog(@"This is 1st index");
        default:
            break;
    }
}

@end
