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
@property (weak, nonatomic) IBOutlet UITextField *sfzhText;
@property (weak, nonatomic) IBOutlet UITextField *departText;
@property (weak, nonatomic) IBOutlet UITextField *rollText;
@property (weak, nonatomic) IBOutlet UITextField *phoneText;
@property (weak, nonatomic) IBOutlet UIToolbar *toobBar;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneButton;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *prevButton;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *nextButton;

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
    
    _nameText.delegate = self;
    _sfzhText.delegate = self;
    _departText.delegate = self;
    _rollText.delegate = self;
    _phoneText.delegate = self;
    
    _nameText.tag = 1001;
    _sfzhText.tag = 1002;
    _phoneText.tag = 1003;
    _departText.tag = 1004;
    _rollText.tag = 1005;
}

- (void)act {
    
}

- (IBAction)done:(id)sender {
    NSInteger i = [sender tag];
    if (i == 1001) {
        [_nameText resignFirstResponder];
    }
    if (i == 1002) {
        [_sfzhText resignFirstResponder];
    }
    if (i == 1003) {
        [_phoneText resignFirstResponder];
    }
    if (i == 1004) {
        [_departText endEditing:YES];
    }
    if (i == 1005) {
        [_rollText endEditing:YES];
    }
}

- (IBAction)prev :(id)sender {
    NSInteger i = [sender tag];
    if (i == 1002) {
        [_sfzhText resignFirstResponder];
        UITextField *text = [self.tableView viewWithTag:i-1];
        [text becomeFirstResponder];
    }
    if (i == 1003) {
        [_phoneText resignFirstResponder];
        UITextField *text = [self.tableView viewWithTag:i-1];
        [text becomeFirstResponder];
    }
    if (i == 1004) {
        [_departText endEditing:YES];
        UITextField *text = [self.tableView viewWithTag:i-1];
        [text becomeFirstResponder];
    }
    if (i == 1005) {
        [_rollText resignFirstResponder];
        UITextField *text = [self.tableView viewWithTag:i-1];
        [text becomeFirstResponder];
    }
}

- (IBAction)next :(id)sender {
    NSInteger i = [sender tag];
    if (i == 1001) {
        [_nameText resignFirstResponder];
        UITextField *text = [self.tableView viewWithTag:i+1];
        [text becomeFirstResponder];
    }
    if (i == 1002) {
        [_sfzhText resignFirstResponder];
        UITextField *text = [self.tableView viewWithTag:i+1];
        [text becomeFirstResponder];
    }
    if (i == 1003) {
        [_phoneText resignFirstResponder];
        UITextField *text = [self.tableView viewWithTag:i+1];
        [text becomeFirstResponder];
    }
    if (i == 1004) {
        [_departText resignFirstResponder];
        UITextField *text = [self.tableView viewWithTag:i+1];
        [text becomeFirstResponder];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - textfield delegate

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    NSInteger i = textField.tag;
    if (i == 1001) {
        _nameText.inputAccessoryView = _toobBar;
        UIBarButtonItem *item0 = [[_toobBar items] objectAtIndex:0];
        item0.enabled = NO;
        item0.tag = 1001;
        UIBarButtonItem *item2 = [[_toobBar items] objectAtIndex:2];
        item2.enabled = YES;
        item2.tag = 1001;
        UIBarButtonItem *item4 = [[_toobBar items] objectAtIndex:4];
        item4.tag = 1001;
    }
    if (i == 1002) {
        _sfzhText.inputAccessoryView = _toobBar;
        UIBarButtonItem *item0 = [[_toobBar items] objectAtIndex:0];
        item0.enabled = YES;
        item0.tag = 1002;
        UIBarButtonItem *item2 = [[_toobBar items] objectAtIndex:2];
        item2.enabled = YES;
        item2.tag = 1002;
        UIBarButtonItem *item4 = [[_toobBar items] objectAtIndex:4];
        item4.tag = 1002;
    }
    if (i == 1003) {
        _phoneText.inputAccessoryView = _toobBar;
        UIBarButtonItem *item0 = [[_toobBar items] objectAtIndex:0];
        item0.enabled = YES;
        item0.tag = 1003;
        UIBarButtonItem *item2 = [[_toobBar items] objectAtIndex:2];
        item2.enabled = YES;
        item2.tag = 1003;
        UIBarButtonItem *item4 = [[_toobBar items] objectAtIndex:4];
        item4.tag = 1003;
    }
    if (i == 1004) {
        JGetDepart *getDepart = [[JGetDepart alloc] init];
        resultArr = [getDepart getDepart];
        _departText.inputView = _pickerView;
        _departText.delegate = self;
        _pickerView.delegate = self;
        _pickerView.dataSource = self;
        _departText.inputAccessoryView = _toobBar;
        UIBarButtonItem *item0 = [[_toobBar items] objectAtIndex:0];
        item0.enabled = YES;
        item0.tag = 1004;
        UIBarButtonItem *item2 = [[_toobBar items] objectAtIndex:2];
        item2.enabled = YES;
        item2.tag = 1004;
        UIBarButtonItem *item4 = [[_toobBar items] objectAtIndex:4];
        item4.tag = 1004;
    }
    if (i == 1005) {
        _rollText.inputAccessoryView = _toobBar;
        UIBarButtonItem *item0 = [[_toobBar items] objectAtIndex:0];
        item0.enabled = YES;
        item0.tag = 1005;
        UIBarButtonItem *item2 = [[_toobBar items] objectAtIndex:2];
        item2.enabled = NO;
        item2.tag = 1005;
        UIBarButtonItem *item4 = [[_toobBar items] objectAtIndex:4];
        item4.tag = 1005;
    }
    return YES;
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    if (textField.tag == 1004) {
        NSInteger row = [_pickerView selectedRowInComponent:0];
        Depart *depart = [resultArr objectAtIndex:row];
        _departText.text = depart.pname;
    }
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
