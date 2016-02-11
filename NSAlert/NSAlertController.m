//
//  NSAlertController.m
//  NSAlert
//
//  Created by srinivas on 11/25/15.
//  Copyright © 2015 Microexcel. All rights reserved.
//

#import "NSAlertController.h"

@interface NSAlertController ()


@end

NSAlertController *nsAlert ;
NSArray *buttonsArray ;

@implementation NSAlertController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

+(void)alertViewTittle:(NSString *)title andMessage:(NSString *)message addButtons:(NSArray *)buttons andDelegage:(id)delegate{
    
     buttonsArray = buttons ;
     nsAlert = [NSAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];

    for (NSString *titile in buttons) {
        UIAlertAction *buttonTitile = nil ;
        buttonTitile = [UIAlertAction actionWithTitle:titile style:UIAlertActionStyleDefault
                                                      handler:^(UIAlertAction * action)
                                                     {
                                                          [nsAlert prepareDelegate:action andDelegate:delegate];
                                                          [nsAlert dismissViewControllerAnimated:YES completion:nil];
                                                      }];
        [nsAlert addAction:buttonTitile];
    }
}

+(void)show:(id)viewController{
    [viewController presentViewController:nsAlert animated:YES completion:nil];
}

-(void)prepareDelegate:(UIAlertAction *)action andDelegate:(id)del{
    _delegate = del ;
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF contains[cd] %@",action.title];
    NSUInteger index = [buttonsArray  indexOfObjectPassingTest:^(id obj, NSUInteger idx, BOOL *stop) {
        return [predicate evaluateWithObject:obj];
    }];
    [_delegate NSAletClickedButtonAtindex:index andButton:action];
}

@end
