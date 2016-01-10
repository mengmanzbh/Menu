//
//  ViewController.m
//  test
//
//  Created by 谢霆锋 on 16/1/10.
//  Copyright © 2016年 lll. All rights reserved.
//

#import "ViewController.h"
#import "KYGooeyMenu.h"

@interface ViewController ()<menuDidSelectedDelegate>

@end

@implementation ViewController{
      KYGooeyMenu *gooeyMenu;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    gooeyMenu = [[KYGooeyMenu alloc]initWithOrigin:CGPointMake(CGRectGetMidX(self.view.frame)-50, 500) andDiameter:100.0f andDelegate:self themeColor:[UIColor redColor]];
    gooeyMenu.menuDelegate = self;
    gooeyMenu.radius = 100/5;     //这里把小圆半径设为大圆的1/4
    gooeyMenu.extraDistance = 20; //间距设为R+r+20。注：R+r是默认存在的。
    gooeyMenu.MenuCount = 5;      //4个子菜单
    gooeyMenu.menuImagesArray = [NSMutableArray arrayWithObjects:
                                 [UIImage imageNamed:@"tabbarItem_discover highlighted"],
                                 [UIImage imageNamed:@"tabbarItem_group highlighted"],
                                 [UIImage imageNamed:@"tabbarItem_home highlighted"],
                                 [UIImage imageNamed:@"tabbarItem_message highlighted"],
                                 [UIImage imageNamed:@"tabbarItem_user_man_highlighted"], nil];
}
-(void)menuDidSelected:(int)index{
    NSLog(@"选中第%d",index);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
