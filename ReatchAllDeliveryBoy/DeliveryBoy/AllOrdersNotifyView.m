//
//  AllOrdersNotifyView.m
//  ReatchAllDeliveryBoy
//
//  Created by PASHA on 02/07/18.
//  Copyright © 2018 Pasha. All rights reserved.
//

#import "AllOrdersNotifyView.h"

@interface AllOrdersNotifyView ()

@end

@implementation AllOrdersNotifyView

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setElements];
    // Do any additional setup after loading the view.
}


-(void)setElements
{
    [self.sideMenuClick addTarget:[SlideNavigationController sharedInstance] action:@selector(toggleLeftMenu) forControlEvents:UIControlEventTouchUpInside];
    self.orderTBV.delegate=self;
    self.orderTBV.dataSource=self;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 15;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    AllOrdersNotifyViewCell * cell =[tableView dequeueReusableCellWithIdentifier:@"AllOrdersNotifyViewCell"];
    
    if (cell==nil)
    {
        cell=[[AllOrdersNotifyViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"AllOrdersNotifyViewCell"];
    }
    
    cell.orderV.layer.cornerRadius=25;
    cell.orderV.layer.masksToBounds=YES;
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 131;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
 
    OrderNotifyView * ONV = [self.storyboard instantiateViewControllerWithIdentifier:@"OrderNotifyView"];
    [self.navigationController pushViewController:ONV animated:YES];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
