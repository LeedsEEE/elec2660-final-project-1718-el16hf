//
//  TableViewController.m
//  Climbing Application
//
//  Created by Harry Frankish [el16hf] on 28/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "TableViewController.h"
#import "DataModel.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.data = [[DataModel alloc] init];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}
-(void)viewWillAppear:(BOOL)animated{
   // [self.tableView ];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 4;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSInteger numberOfRows;
    if (section == 0) {
        numberOfRows = self.data.greenRoutes.count;
    }
    else if (section == 1) {
        numberOfRows = self.data.orangeRoutes.count;
    }
    else if (section == 2) {
        numberOfRows = self.data.greyRoutes.count;
    }
    else if (section == 3) {
        numberOfRows = self.data.yellowRoutes.count;
    }

    return numberOfRows;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString *sectionName;
    
    
    switch (section)
    {
        case 0:
            sectionName = NSLocalizedString(@"Green routes", @"Green routes");
            break;
        case 1:
            sectionName = NSLocalizedString(@"Orange routes", @"Orange routes");
            break;
        case 2:
            sectionName = NSLocalizedString(@"Grey routes", @"Grey routes");
            break;
        case 3:
            sectionName = NSLocalizedString(@"Yellow routes", @"Yellow routes");
            break;
            // ...
        default:
            sectionName = @"";
            break;
    }
    return sectionName;     //https://stackoverflow.com/questions/10505708/how-to-set-the-uitableview-section-title-programmatically-iphone-ipad
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"RouteCell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    if(indexPath.section == 0){     //green Routes
        Route *tempRoute = [self.data.greenRoutes objectAtIndex:indexPath.row];
        cell.textLabel.text = tempRoute.routenumber;
        cell.detailTextLabel.text = @" ";
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        BOOL complete = [defaults boolForKey:tempRoute.routenumber];
        [defaults setBool:complete forKey:@"Complete"];
        [defaults synchronize];
        if (complete == true) {
            cell.imageView.image = [UIImage imageNamed:@"TickIcon.png"];
        }
        else {
            cell.imageView.image = [UIImage imageNamed:@"WhiteTickIcon.png"];
        }
    }
    
    if(indexPath.section == 1){     //orange Routes
        Route *tempRoute = [self.data.orangeRoutes objectAtIndex:indexPath.row];
        cell.textLabel.text = tempRoute.routenumber;
        cell.detailTextLabel.text = @" ";
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        BOOL complete = [defaults boolForKey:tempRoute.routenumber];
        [defaults setBool:complete forKey:@"Complete"];
        [defaults synchronize];
        if (complete == true) {
            cell.imageView.image = [UIImage imageNamed:@"TickIcon.png"];
        }
        else {
            cell.imageView.image = [UIImage imageNamed:@"WhiteTickIcon.png"];
        }
    }
    
    if(indexPath.section == 2){     //grey Routes
        Route *tempRoute = [self.data.greyRoutes objectAtIndex:indexPath.row];
        cell.textLabel.text = tempRoute.routenumber;
        cell.detailTextLabel.text = @" ";
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        BOOL complete = [defaults boolForKey:tempRoute.routenumber];
        [defaults setBool:complete forKey:@"Complete"];
        [defaults synchronize];
        if (complete == true) {
            cell.imageView.image = [UIImage imageNamed:@"TickIcon.png"];
        }
        else {
            cell.imageView.image = [UIImage imageNamed:@"WhiteTickIcon.png"];
        }
    }
    
    if(indexPath.section == 3){     //yellow Routes
        Route *tempRoute = [self.data.yellowRoutes objectAtIndex:indexPath.row];
        cell.textLabel.text = tempRoute.routenumber;
        cell.detailTextLabel.text = @" ";
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        BOOL complete = [defaults boolForKey:tempRoute.routenumber];
        [defaults setBool:complete forKey:@"Complete"];
        [defaults synchronize];
        if (complete == true) {
            cell.imageView.image = [UIImage imageNamed:@"TickIcon.png"];
        }
        else {
            cell.imageView.image = [UIImage imageNamed:@"WhiteTickIcon.png"];
        }
    }

    
    
    return cell;
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

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if ([[segue identifier] isEqualToString:@"ShowRouteDetails"]){
        RouteViewController *destinationViewController = [segue destinationViewController];
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        if (indexPath.section == 0) {
            Route *tempRoute = [self.data.greenRoutes objectAtIndex:indexPath.row];
            destinationViewController.route = tempRoute;
        }
        else if (indexPath.section == 1) {
            Route *tempRoute = [self.data.orangeRoutes objectAtIndex:indexPath.row];
            destinationViewController.route = tempRoute;
        }
        else if (indexPath.section == 2) {
            Route *tempRoute = [self.data.greyRoutes objectAtIndex:indexPath.row];
            destinationViewController.route = tempRoute;
        }
        else if (indexPath.section == 3) {
            Route *tempRoute = [self.data.yellowRoutes objectAtIndex:indexPath.row];
            destinationViewController.route = tempRoute;
        }
}
}

@end
