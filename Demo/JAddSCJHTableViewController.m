//
//  JAddSCJHTableViewController.m
//  Demo
//
//  Created by jianghouyu on 16/2/1.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "JAddSCJHTableViewController.h"
#import "JGetDepart.h"
#import "Depart.h"
#import "JGetUser.h"
#import "User.h"
#import "SHMultipleSelect.h"

@interface JAddSCJHTableViewController () <UITextFieldDelegate,SHMultipleSelectDelegate>
@property (weak, nonatomic) IBOutlet UITextField *gzddText;
@property (weak, nonatomic) IBOutlet UITextField *gznrText;
@property (weak, nonatomic) IBOutlet UITextField *startText;
@property (weak, nonatomic) IBOutlet UITextField *endText;

@property (weak, nonatomic) IBOutlet UITextField *sgdwText;
@property (weak, nonatomic) IBOutlet UITextField *ryText;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (weak, nonatomic) IBOutlet UIToolbar *toolBar;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneButton;

@end

@implementation JAddSCJHTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.tableView.separatorStyle = UITableViewCellSelectionStyleNone;
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    _gznrText.delegate = self;
    _gzddText.delegate = self;
    _startText.delegate = self;
    _endText.delegate = self ;
    _sgdwText.delegate = self;
    _ryText.delegate = self;
    _gznrText.returnKeyType = UIReturnKeyNext;
    _gzddText.returnKeyType = UIReturnKeyNext;
    
    _gznrText.tag = 1001;
    _gzddText.tag = 1002;
    _startText.tag = 1003;
    _endText.tag = 1004;
    _sgdwText.tag = 1005;
    _ryText.tag = 1006;
    
    
    _datePicker.datePickerMode = UIDatePickerModeDate;
}

- (IBAction)done :(id)sender {
    NSLog(@"%ld",(long)[sender tag]);
    NSInteger i = [sender tag];
    if (i == 13) {
        [_startText endEditing:YES];
    }
    else if (i == 14) {
        [_endText endEditing:YES];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - textfield delegate

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    if (textField.tag == 1003) {
        _startText.inputView = _datePicker;
        _startText.inputAccessoryView = _toolBar;
        NSLog(@"%@", [[_toolBar items] objectAtIndex:1]);
        UIBarButtonItem *item = [[_toolBar items] objectAtIndex:1];
        item.tag = 13;
    }
    if (textField.tag == 1004) {
        _endText.inputView = _datePicker;
        _endText.inputAccessoryView = _toolBar;
        UIBarButtonItem *item = [[_toolBar items] objectAtIndex:1];
        item.tag = 14;
    }
    if (textField.tag == 1005) {
        JGetDepart *getDepart = [[JGetDepart alloc] init];
        resultArr = [getDepart getDepart];
        SHMultipleSelect *select = [[SHMultipleSelect alloc] init];
        select.tag = 15;
        select.delegate = self;
        select.rowsCount = resultArr.count;
        [select show];
        return NO;
    }
    if (textField.tag == 1006) {
        JGetUser *getUser = [[JGetUser alloc] init];
        resultArr = [getUser getUser];
        SHMultipleSelect *select = [[SHMultipleSelect alloc] init];
        select.tag = 16;
        select.delegate = self;
        select.rowsCount = resultArr.count;
        [select show];
        return NO;
    }
    
    return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    NSInteger i = textField.tag;
//    if (i == 1005) {
//        [textField resignFirstResponder];
//    }
    if (textField.returnKeyType == UIReturnKeyNext) {
        UITextField *text = [self.tableView viewWithTag:i+1];
        [text becomeFirstResponder];
    }
    return YES;
}


- (void)textFieldDidEndEditing:(UITextField *)textField {
    NSInteger i = textField.tag;
    if (i == 1003) {
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:@"yyyy年MM月dd"];
        _startText.text = [formatter stringFromDate:[_datePicker date]];
    }
    else if (i == 1004) {
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:@"yyyy年MM月dd"];
        _endText.text = [formatter stringFromDate:[_datePicker date]];
    }
    else if (i == 1005) {
//        NSInteger row = [_pickerView selectedRowInComponent:0];
//        Depart *depart = [resultArr objectAtIndex:row];
//        _sgdwText.text = depart.pname;
    }
    else if (i == 1006) {
//        NSInteger row = [_pickerView selectedRowInComponent:0];
//        User *user = [resultArr objectAtIndex:row];
//        _ryText.text = user.uname;
    }
}

#pragma mark - SHMultipleSelectDelegate
- (void)multipleSelectView:(SHMultipleSelect*)multipleSelectView clickedBtnAtIndex:(NSInteger)clickedBtnIndex withSelectedIndexPaths:(NSArray *)selectedIndexPaths {
    if (clickedBtnIndex == 1) { // Done btn
        NSString *string =@"";
        if (multipleSelectView.tag == 15) {
            for (NSIndexPath *indexPath in selectedIndexPaths) {
                //NSLog(@"%@", resultArr[indexPath.row]);
                Depart *depart = resultArr[indexPath.row];
                string = [string stringByAppendingFormat:@" %@ ,",depart.pname];
            }
            select1Arr = selectedIndexPaths;
            _sgdwText.text = string;
        }
        else if (multipleSelectView.tag == 16) {
            for (NSIndexPath *indexPath in selectedIndexPaths) {
                //NSLog(@"%@", resultArr[indexPath.row]);
                User *user = resultArr[indexPath.row];
                string = [string stringByAppendingFormat:@" %@ ,",user.uname];
            }
            select2Arr = selectedIndexPaths;
            _ryText.text = string;
        }
    }
}

- (NSString*)multipleSelectView:(SHMultipleSelect*)multipleSelectView titleForRowAtIndexPath:(NSIndexPath*)indexPath {
    NSString *ret = nil;
    if (multipleSelectView.tag == 15) {
        Depart *depart = resultArr[indexPath.row];
        ret = depart.pname;
    }
    else if (multipleSelectView.tag == 16) {
        User *user = resultArr[indexPath.row];
        ret = user.uname;
    }
    
    return ret;
}

- (BOOL)multipleSelectView:(SHMultipleSelect*)multipleSelectView setSelectedForRowAtIndexPath:(NSIndexPath*)indexPath {
    BOOL canSelect = NO;
//    if (indexPath.row == resultArr.count - 1) { // last object
//        canSelect = YES;
//    }
    
    NSArray *selectArr = nil;
    if (multipleSelectView.tag ==15) {
        selectArr = select1Arr;
    }
    else {
        selectArr = select2Arr;
    }
    for (id mine in selectArr) {
        if (mine == indexPath) {
            canSelect = YES;
        }
    }
    
    return canSelect;
}

#pragma mark - Table view data source

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return section == 0 ? 1.0f : UITableViewAutomaticDimension;
}

//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//
//    NSLog(@"%ld",(long)indexPath.section);
//    if (indexPath.section == 3) {
//        _startText.inputView = _datePicker;
//        _startText.inputAccessoryView = _toolBar;
//        _toolBar.tag = 11;
//    }
//    else if (indexPath.section == 4) {
//        _endText.inputView = _datePicker;
//        _endText.inputAccessoryView = _toolBar;
//        _toolBar.tag = 12;
//    }
//}

//- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
//    return section == 0 ? nil : @"";
//}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:; forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

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
