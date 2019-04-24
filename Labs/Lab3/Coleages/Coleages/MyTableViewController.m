//
//  MyTableViewController.m
//  Coleages
//
//  Created by JETS Mobile Lab-11 on 4/15/19.
//  Copyright © 2019 Jets. All rights reserved.
//

#import "MyTableViewController.h"

@interface MyTableViewController ()

@end

@implementation MyTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    frindManager = [[FrindManager alloc] init];
    [frindManager addFrind : [[Frind alloc] initWithName:@"Rokaya" andAge:24 andPhone:@"011457264" andEmail:@"R@m.c" andAddress:@"Cairo" andGender:@"female"]];
    
    [frindManager addFrind : [[Frind alloc] initWithName:@"Mai" andAge:23 andPhone:@"012455643" andEmail:@"M@a.d" andAddress:@"Aswan" andGender:@"female"]];
    
    [frindManager addFrind : [[Frind alloc] initWithName:@"Ahmed" andAge:23 andPhone:@"012345678" andEmail:@"A@c.m" andAddress:@"Luxur" andGender:@"male"]];
    
    [frindManager addFrind : [[Frind alloc] initWithName:@"Adam" andAge:23 andPhone:@"011555555" andEmail:@"adm@m.c" andAddress:@"sohag" andGender:@"male"]];
    
    [frindManager addFrind : [[Frind alloc] initWithName:@"Fatma" andAge:23 andPhone:@"014444444" andEmail:@"Fatma@m.c" andAddress:@"Esnaa" andGender:@"female"]];
    
    [frindManager addFrind : [[Frind alloc] initWithName:@"Esraa" andAge:23 andPhone:@"013333333" andEmail:@"Esraa@m.c" andAddress:@"Qena" andGender:@"female"]];
    
    [frindManager addFrind : [[Frind alloc] initWithName:@"Omar" andAge:23 andPhone:@"0177777777" andEmail:@"Omar@m.c" andAddress:@"Aswan" andGender:@"male"]];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if(section == 0)
        return [frindManager.femaleList count];
    else
        return [frindManager.maleList count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    switch (indexPath.section) {
        case 0:{
            cell.textLabel.text = [frindManager.femaleList[indexPath.row] name];
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        }
            break;
        case 1:{
            cell.textLabel.text = [frindManager.maleList[indexPath.row] name];
            cell.accessoryType = UITableViewCellAccessoryCheckmark;
        }
            break;
        default:
            break;
    }
//     Configure the cell...
 
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    switch (section) {
        case 0:
            return @"Females";
            break;
            
        default:
            return @"Males";
            break;
    }
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    TempViewController * viewController = [self.storyboard instantiateViewControllerWithIdentifier: @"viewController"];
    switch (indexPath.section) {
        case 0:{
            printf("section : %s row: %s\n","Females",[[frindManager.femaleList[indexPath.row] name] UTF8String]);
            viewController.frind = frindManager.femaleList[indexPath.row] ;
            
        }break;
        default:{
            printf("section : %s row: %s\n","Males",[[frindManager.maleList[indexPath.row] name] UTF8String]);
            viewController.frind = frindManager.maleList[indexPath.row];
            
        }break;
    }
    [self.navigationController pushViewController:viewController animated:YES];
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 70;
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
