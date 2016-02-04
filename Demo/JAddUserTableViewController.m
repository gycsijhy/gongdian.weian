//
//  JAddUserTableViewController.m
//  Demo
//
//  Created by jianghouyu on 16/1/28.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "JAddUserTableViewController.h"
#import "Depart.h"
#import "JGetDepart.h"

@interface JAddUserTableViewController () <UIPickerViewDelegate,UIPickerViewDataSource,UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *nameText;
@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (weak, nonatomic) IBOutlet UITextField *departText;
@property (weak, nonatomic) IBOutlet UIPickerView *departSelect;
@property (strong, nonatomic) IBOutlet UIToolbar *toobBar;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneButton;

@end

@implementation JAddUserTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"完成" style:UIBarButtonItemStylePlain target:self action:@selector(act)];
    self.navigationItem.rightBarButtonItem = rightButton;
    self.tableView.separatorStyle = UITableViewCellSelectionStyleNone;
    
    _nameText.inputView = _datePicker;
    _nameText.inputAccessoryView = _toobBar;
    
//    _departText.inputView = _departSelect;
//    _departText.inputAccessoryView = _toobBar;
    _departText.delegate = self;
    _departSelect.delegate = self;
    _departSelect.dataSource = self;
//    JGetDepart *getDepart = [[JGetDepart alloc] init];
//    resultArr = [getDepart getDepart];
    
}

- (void)act {
    
}

- (IBAction)done:(id)sender {
    [_nameText endEditing:YES];
    [_departText endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - PickView delegate

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [resultArr count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    Depart *depart = [resultArr objectAtIndex:row];
    return depart.pname;
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    if ([textField.placeholder isEqualToString:@"姓名"]) {
        //_nameText.text = _datePicker.
    }
    else if ([textField.placeholder isEqualToString:@"部门"]) {
        NSInteger row = [_departSelect selectedRowInComponent:0];
        Depart *depart = [resultArr objectAtIndex:row];
        _departText.text = depart.pname;
    }
}

- (void)textFieldDidBeginEditing:(UITextField *)textField {
    if ([textField.placeholder isEqualToString:@"部门"]) {
        _departText.inputView = _departSelect;
        _departText.inputAccessoryView = _toobBar;
        JGetDepart *getDepart = [[JGetDepart alloc] init];
        resultArr = [getDepart getDepart];
    }
    
}


#pragma mark - Table view data source

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return section == 0 ? 1.0f : UITableViewAutomaticDimension;
}

//- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
//    return section == 0 ? nil : @"";
//}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//    NSLog(@"%ld",(long)[indexPath row]);
//    NSLog(@"%ld",(long)indexPath.section);
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
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
