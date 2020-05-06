//
//  ViewController.m
//  BPAttributeModule
//
//  Created by baipeng on 2020/5/6.
//  Copyright © 2020 Apple Inc. All rights reserved.
//

#import "ViewController.h"

#import "URLSeletedLabel.h"
#import "TextAttributeString.h"
#import "ResultAttributeModel.h"
 
@interface ViewController ()
@property (nonatomic,strong)URLSeletedLabel *label;

@end

@implementation ViewController

#pragma mark - life cyle 1、控制器生命周期
- (void)viewDidLoad {
	[super viewDidLoad];
		// Do any additional setup after loading the view.
	self.view.backgroundColor = [UIColor whiteColor];
	[self createSubViewUI];



    ResultAttributeModel *model = [TextAttributeString attributedStringSubset:@"http://foo.com/blah_blah 法师[悲哀]打发斯蒂芬 急急急#着他吧#发的说法[挖鼻屎]发浓缩的@baipeng 烦恼 http://baidu.com" textFont:30];
	_label.specialColor = [UIColor blueColor];
	_label.seletedColor = [UIColor grayColor];
	_label.textFont  = 30;
	_label.attributedText = [model.resultAttStr copy];




}

#pragma mark - 2、不同业务处理之间的方法以

#pragma mark - Network 3、网络请求

#pragma mark - Action Event 4、响应事件

#pragma mark - Call back 5、回调事件

#pragma mark - Delegate 6、代理、数据源

#pragma mark - interface 7、UI处理
-(void)createSubViewUI{

	self.label = [[URLSeletedLabel alloc]init];
	self.label.frame = CGRectMake(10, 100, self.view.frame.size.width - 20, 100);
	self.label.textColor = UIColor.blackColor;
	self.label.font = [UIFont systemFontOfSize:12.0];
	self.label.numberOfLines = 0;
	[self.view addSubview:self.label];

}

#pragma mark - lazy loading 8、懒加载


@end
