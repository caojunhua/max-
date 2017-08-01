//
//  JHLiveViewController.m
//  Max
//
//  Created by 曹均华 on 2017/7/27.
//  Copyright © 2017年 caojunhua. All rights reserved.
//

#import "JHLiveViewController.h"

@interface JHLiveViewController ()<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>
@property(nonatomic,strong)UICollectionViewFlowLayout *layout;
@property(nonatomic,strong)UICollectionView *collectionView;
@end


@implementation JHLiveViewController

static NSString * const JHCell = @"collectionViewCell";
#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor yellowColor];
    [self setNaviagtionBarImage];//设置导航栏
    [self setUpFlowLayout];//设置collectionview属性
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:self.view.frame collectionViewLayout:_layout];
    collectionView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:collectionView];
    _collectionView = collectionView;
    [collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:JHCell];
    collectionView.delegate = self;
    collectionView.dataSource = self;
}

- (void)setUpFlowLayout {
//- (instancetype)init{
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    //1.设置列间距
//    layout.minimumInteritemSpacing = 10;
//    //2.设置行间距
//    layout.minimumLineSpacing = 2;
//    //3.设置每个item的大小
//    layout.itemSize = CGSizeMake(SCREEN_WIDTH * 0.5, SCREEN_WIDTH * 0.5);
//    //4.设置item的估计大小,用于动态设置item的大小...(暂不清楚干什么的)
////    layout.estimatedItemSize = CGSizeMake(320, 60);
//    //5.设置布局方向 默认垂直
////    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
//    //6.设置头视图尺寸
////    layout.headerReferenceSize = CGSizeMake(100, 100);
//    //7.设置尾视图尺寸
////    layout.footerReferenceSize = CGSizeMake(500, 500);
//    //8.设置分区的edgeinset
//    layout.sectionInset = UIEdgeInsetsMake(20, 20, 20, 20);
//    //9.设置头尾视图是否固定在屏幕上边和下边
//    layout.sectionHeadersPinToVisibleBounds = NO;
//    layout.sectionFootersPinToVisibleBounds = YES;
    _layout = layout;
}
- (void)setNaviagtionBarImage {
    UIImage *leftImg = [UIImage imageNamed:@"反馈_20x20_"];
    UIButton *leftBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    [leftBtn setImage:leftImg forState:UIControlStateNormal];
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithCustomView:leftBtn];
    self.navigationItem.leftBarButtonItem = leftItem;
    [leftBtn addTarget:self action:@selector(clickLeftImg) forControlEvents:UIControlEventTouchUpInside];
    
    UIImageView *titleImg = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"normal_max_bottom_logo_48x16_"]];
    self.navigationItem.titleView= titleImg;
}

#pragma mark -- 点击事件
- (void)clickLeftImg {
    NSLog(@"点击了左侧图片");
}
- (void)clickRightImg {
    NSLog(@"点击了右侧图片");
}
#pragma mark -- UICollectionViewDelegate
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"选择了--%zd个cell",indexPath.item);
}
//数据源方法 必须实现
#pragma mark -- UICollectionViewDataSource
//设置分区数
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 2;
}
//设置每个分区item个数
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    if (section == 0) {
        return 1;
    }else {
        return 20;
    }
}
//设置每个item属性
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:JHCell forIndexPath:indexPath];
    if (indexPath.section == 0) {
        cell.backgroundColor = [UIColor greenColor];
    }else {
        cell.backgroundColor = [UIColor blueColor];
    }
    
    return cell;
}
#pragma mark -- UICollectionViewDelegateFlowLayout
//
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        _layout.itemSize = CGSizeMake(SCREEN_WIDTH, 200);
        return _layout.itemSize;
    }else{
        _layout.itemSize = CGSizeMake(SCREEN_WIDTH * 0.5 - 10, SCREEN_WIDTH * 0.5 - 10);
        return _layout.itemSize;
    }
}
- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    _layout.sectionInset = UIEdgeInsetsMake(2, 2, 2, 2);
    return _layout.sectionInset;
}
//- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section{
//    
//}
//- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section{
//    
//}
//- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
//    
//}
//- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout referenceSizeForFooterInSection:(NSInteger)section{
//    
//}
//- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section{
//    
//}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
