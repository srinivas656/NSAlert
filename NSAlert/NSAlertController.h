//
//  NSAlertController.h
//  NSAlert
//
//  Created by srinivas on 11/25/15.
//  Copyright © 2015 Microexcel. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol NSAletDelegate <NSObject>

-(void)NSAletClickedButtonAtindex:(NSInteger)index andButton:(UIAlertAction *)alertAction ;

@end

@interface NSAlertController : UIAlertController

@property (nonatomic ,weak)id <NSAletDelegate> delegate ;

+(void)alertViewTittle:(NSString *)title andMessage:(NSString *)message addButtons:(NSArray *)buttons andDelegage:(id)delegate ;

+(void)show:(id)viewController ;

@end
