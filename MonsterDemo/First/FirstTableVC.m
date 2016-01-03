//
//  FirstTableVC.m
//  LD
//
//  Created by lydsnm on 15/11/4.
//  Copyright © 2015年 lydsnm. All rights reserved.
//

#import "FirstTableVC.h"
#import "ExampleCellItem.h"
#import "TestVC01.h"

//test

@interface FirstTableVC ()
@property (nonatomic, nonnull, strong) NSMutableArray *egsList;

@end

@implementation FirstTableVC
- (NSMutableArray *)egsList{
    if (nil == _egsList){
        _egsList = [[NSMutableArray alloc] init];
    }
    return _egsList;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"首页";
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    //[self.egsList addObject:[ExampleCellItem itemWithExampleName:@"测试" VCName:@"TestVC01"]];
    [self.egsList addObject:[ExampleCellItem itemWithExampleName:@"图文混编" VCName:@"GraphicTextMixedViewController"]];
    
    
    

    
    
    
    
    
    
    
    
    
    
    
    
    
}
- (void)viewWillAppear:(BOOL)animated{
    self.hidesBottomBarWhenPushed = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.egsList.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString* const ID = @"ExampleCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    ExampleCellItem *cellItem = self.egsList[indexPath.row];
    
    cell.textLabel.text = cellItem.ExampleName;

    
    
    // Configure the cell...
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    ExampleCellItem *cellItem = self.egsList[indexPath.row];
    
    UIViewController *destVC = [[NSClassFromString(cellItem.viewControllerName) alloc] init];
    [self.navigationController pushViewController:destVC animated:YES];
    
    
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
