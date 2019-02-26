//
//  CJViewController.m
//  CJModuleA
//
//  Created by 496795352@qq.com on 02/26/2019.
//  Copyright (c) 2019 496795352@qq.com. All rights reserved.
//

#import "CJViewController.h"
#import "CTMediator+CJA.h"
#import "A_SecionViewController.h"
@interface CJViewController ()
@property (nonatomic, strong)UIButton *closeBtn;
@end

@implementation CJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self.view addSubview:self.closeBtn];
}

- (void)closeBtnClick:(UIButton *)sender {
//    A_SecionViewController *vc = [[A_SecionViewController alloc]init];
    UIViewController *vc = [[CTMediator sharedInstance] A_SecionInfoWithName:@"jhon" age:18];
    [self presentViewController:vc animated:YES completion:nil];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (UIButton *)closeBtn {
    if (!_closeBtn) {
        _closeBtn = [[UIButton alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2-100, self.view.frame.size.height/2-100, 200, 50)];
        _closeBtn.backgroundColor = [UIColor yellowColor];
        [_closeBtn setTitle:@"模块A" forState:UIControlStateNormal];
        [_closeBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_closeBtn addTarget:self action:@selector(closeBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _closeBtn;
}

@end
