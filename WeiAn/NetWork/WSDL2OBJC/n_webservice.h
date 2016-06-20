#import <Foundation/Foundation.h>
#import "USAdditions.h"
#import <libxml/tree.h>
#import "USGlobals.h"
@class n_webservice_uf_check_imei;
@class n_webservice_uf_check_imeiResponse;
@class n_webservice_uf_check_uid;
@class n_webservice_uf_check_uidResponse;
@class n_webservice_uf_update_imei;
@class n_webservice_uf_update_imeiResponse;
@class n_webservice_uf_check_imei_json;
@class n_webservice_uf_check_imei_jsonResponse;
@class n_webservice_uf_send_msgs;
@class n_webservice_uf_send_msgsResponse;
@class n_webservice_get_cf1_json;
@class n_webservice_get_cf1_jsonResponse;
@class n_webservice_get_cf2_json;
@class n_webservice_get_cf2_jsonResponse;
@class n_webservice_get_department_filter;
@class n_webservice_get_department_filterResponse;
@class n_webservice_get_department_json;
@class n_webservice_get_department_jsonResponse;
@class n_webservice_get_department_users_json;
@class n_webservice_get_department_users_jsonResponse;
@class n_webservice_get_menu_all_json;
@class n_webservice_get_menu_all_jsonResponse;
@class n_webservice_get_menu_json;
@class n_webservice_get_menu_jsonResponse;
@class n_webservice_get_project_all_json;
@class n_webservice_get_project_all_jsonResponse;
@class n_webservice_get_project_json;
@class n_webservice_get_project_jsonResponse;
@class n_webservice_get_project_menu_json;
@class n_webservice_get_project_menu_jsonResponse;
@class n_webservice_get_project_sp_json;
@class n_webservice_get_project_sp_jsonResponse;
@class n_webservice_get_sp_number;
@class n_webservice_get_sp_numberResponse;
@class n_webservice_get_user_by_pid_json;
@class n_webservice_get_user_by_pid_jsonResponse;
@class n_webservice_get_users_by_menu;
@class n_webservice_get_users_by_menuResponse;
@class n_webservice_get_users_json;
@class n_webservice_get_users_jsonResponse;
@class n_webservice_modify_department;
@class n_webservice_modify_departmentResponse;
@class n_webservice_modify_project_jd_json;
@class n_webservice_modify_project_jd_jsonResponse;
@class n_webservice_modify_project_json;
@class n_webservice_modify_project_jsonResponse;
@class n_webservice_modify_rolls;
@class n_webservice_modify_rollsResponse;
@class n_webservice_modify_users;
@class n_webservice_modify_usersResponse;
@class n_webservice_modify_users_head;
@class n_webservice_modify_users_headResponse;
@class n_webservice_save_photo_to_file;
@class n_webservice_save_photo_to_fileResponse;
@class n_webservice_uf_commit_sp;
@class n_webservice_uf_commit_spResponse;
@class n_webservice_uf_login_out;
@class n_webservice_uf_login_outResponse;
@class n_webservice_uf_send_sms;
@class n_webservice_uf_send_smsResponse;
@class n_webservice_get_project_dxtz_json;
@class n_webservice_get_project_dxtz_jsonResponse;
@class n_webservice_uf_send_msg_tz;
@class n_webservice_uf_send_msg_tzResponse;
@class n_webservice_uf_test;
@class n_webservice_uf_testResponse;
@interface n_webservice_uf_check_imei : NSObject {
	
/* elements */
	NSString * imei;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_uf_check_imei *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * imei;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_uf_check_imeiResponse : NSObject {
	
/* elements */
	NSString * uf_check_imeiResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_uf_check_imeiResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * uf_check_imeiResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_uf_check_uid : NSObject {
	
/* elements */
	NSString * uid;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_uf_check_uid *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * uid;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_uf_check_uidResponse : NSObject {
	
/* elements */
	NSString * uf_check_uidResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_uf_check_uidResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * uf_check_uidResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_uf_update_imei : NSObject {
	
/* elements */
	NSString * uid;
	NSString * imei;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_uf_update_imei *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * uid;
@property (retain) NSString * imei;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_uf_update_imeiResponse : NSObject {
	
/* elements */
	NSString * uf_update_imeiResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_uf_update_imeiResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * uf_update_imeiResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_uf_check_imei_json : NSObject {
	
/* elements */
	NSString * imei;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_uf_check_imei_json *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * imei;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_uf_check_imei_jsonResponse : NSObject {
	
/* elements */
	NSString * uf_check_imei_jsonResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_uf_check_imei_jsonResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * uf_check_imei_jsonResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_uf_send_msgs : NSObject {
	
/* elements */
	NSString * gson;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_uf_send_msgs *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * gson;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_uf_send_msgsResponse : NSObject {
	
/* elements */
	NSString * uf_send_msgsResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_uf_send_msgsResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * uf_send_msgsResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_get_cf1_json : NSObject {
	
/* elements */
	NSString * token;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_get_cf1_json *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * token;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_get_cf1_jsonResponse : NSObject {
	
/* elements */
	NSString * get_cf1_jsonResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_get_cf1_jsonResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * get_cf1_jsonResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_get_cf2_json : NSObject {
	
/* elements */
	NSString * token;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_get_cf2_json *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * token;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_get_cf2_jsonResponse : NSObject {
	
/* elements */
	NSString * get_cf2_jsonResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_get_cf2_jsonResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * get_cf2_jsonResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_get_department_filter : NSObject {
	
/* elements */
	NSString * token;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_get_department_filter *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * token;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_get_department_filterResponse : NSObject {
	
/* elements */
	NSString * get_department_filterResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_get_department_filterResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * get_department_filterResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_get_department_json : NSObject {
	
/* elements */
	NSString * token;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_get_department_json *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * token;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_get_department_jsonResponse : NSObject {
	
/* elements */
	NSString * get_department_jsonResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_get_department_jsonResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * get_department_jsonResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_get_department_users_json : NSObject {
	
/* elements */
	NSString * token;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_get_department_users_json *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * token;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_get_department_users_jsonResponse : NSObject {
	
/* elements */
	NSString * get_department_users_jsonResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_get_department_users_jsonResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * get_department_users_jsonResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_get_menu_all_json : NSObject {
	
/* elements */
	NSString * uids;
	NSString * token;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_get_menu_all_json *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * uids;
@property (retain) NSString * token;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_get_menu_all_jsonResponse : NSObject {
	
/* elements */
	NSString * get_menu_all_jsonResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_get_menu_all_jsonResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * get_menu_all_jsonResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_get_menu_json : NSObject {
	
/* elements */
	NSString * uids;
	NSString * token;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_get_menu_json *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * uids;
@property (retain) NSString * token;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_get_menu_jsonResponse : NSObject {
	
/* elements */
	NSString * get_menu_jsonResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_get_menu_jsonResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * get_menu_jsonResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_get_project_all_json : NSObject {
	
/* elements */
	NSString * user_id;
	NSString * rowstart;
	NSString * rowend;
	NSString * token;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_get_project_all_json *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * user_id;
@property (retain) NSString * rowstart;
@property (retain) NSString * rowend;
@property (retain) NSString * token;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_get_project_all_jsonResponse : NSObject {
	
/* elements */
	NSString * get_project_all_jsonResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_get_project_all_jsonResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * get_project_all_jsonResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_get_project_json : NSObject {
	
/* elements */
	NSString * user_id;
	NSString * menu_id;
	NSString * rowstart;
	NSString * rowend;
	NSString * token;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_get_project_json *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * user_id;
@property (retain) NSString * menu_id;
@property (retain) NSString * rowstart;
@property (retain) NSString * rowend;
@property (retain) NSString * token;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_get_project_jsonResponse : NSObject {
	
/* elements */
	NSString * get_project_jsonResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_get_project_jsonResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * get_project_jsonResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_get_project_menu_json : NSObject {
	
/* elements */
	NSString * user_id;
	NSString * token;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_get_project_menu_json *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * user_id;
@property (retain) NSString * token;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_get_project_menu_jsonResponse : NSObject {
	
/* elements */
	NSString * get_project_menu_jsonResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_get_project_menu_jsonResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * get_project_menu_jsonResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_get_project_sp_json : NSObject {
	
/* elements */
	NSString * token;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_get_project_sp_json *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * token;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_get_project_sp_jsonResponse : NSObject {
	
/* elements */
	NSString * get_project_sp_jsonResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_get_project_sp_jsonResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * get_project_sp_jsonResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_get_sp_number : NSObject {
	
/* elements */
	NSString * token;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_get_sp_number *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * token;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_get_sp_numberResponse : NSObject {
	
/* elements */
	NSString * get_sp_numberResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_get_sp_numberResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * get_sp_numberResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_get_user_by_pid_json : NSObject {
	
/* elements */
	NSString * pid;
	NSString * token;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_get_user_by_pid_json *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * pid;
@property (retain) NSString * token;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_get_user_by_pid_jsonResponse : NSObject {
	
/* elements */
	NSString * get_user_by_pid_jsonResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_get_user_by_pid_jsonResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * get_user_by_pid_jsonResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_get_users_by_menu : NSObject {
	
/* elements */
	NSString * menu;
	NSString * token;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_get_users_by_menu *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * menu;
@property (retain) NSString * token;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_get_users_by_menuResponse : NSObject {
	
/* elements */
	NSString * get_users_by_menuResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_get_users_by_menuResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * get_users_by_menuResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_get_users_json : NSObject {
	
/* elements */
	NSString * token;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_get_users_json *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * token;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_get_users_jsonResponse : NSObject {
	
/* elements */
	NSString * get_users_jsonResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_get_users_jsonResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * get_users_jsonResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_modify_department : NSObject {
	
/* elements */
	NSString * action;
	NSString * pid;
	NSString * pname;
	NSString * userid;
	NSString * token;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_modify_department *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * action;
@property (retain) NSString * pid;
@property (retain) NSString * pname;
@property (retain) NSString * userid;
@property (retain) NSString * token;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_modify_departmentResponse : NSObject {
	
/* elements */
	NSString * modify_departmentResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_modify_departmentResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * modify_departmentResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_modify_project_jd_json : NSObject {
	
/* elements */
	NSString * action;
	NSString * gson;
	NSString * token;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_modify_project_jd_json *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * action;
@property (retain) NSString * gson;
@property (retain) NSString * token;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_modify_project_jd_jsonResponse : NSObject {
	
/* elements */
	NSString * modify_project_jd_jsonResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_modify_project_jd_jsonResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * modify_project_jd_jsonResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_modify_project_json : NSObject {
	
/* elements */
	NSString * action;
	NSString * gson;
	NSString * token;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_modify_project_json *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * action;
@property (retain) NSString * gson;
@property (retain) NSString * token;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_modify_project_jsonResponse : NSObject {
	
/* elements */
	NSString * modify_project_jsonResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_modify_project_jsonResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * modify_project_jsonResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_modify_rolls : NSObject {
	
/* elements */
	NSString * uids;
	NSString * menu_id;
	NSString * flag;
	NSString * token;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_modify_rolls *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * uids;
@property (retain) NSString * menu_id;
@property (retain) NSString * flag;
@property (retain) NSString * token;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_modify_rollsResponse : NSObject {
	
/* elements */
	NSString * modify_rollsResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_modify_rollsResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * modify_rollsResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_modify_users : NSObject {
	
/* elements */
	NSString * action;
	NSString * id_;
	NSString * uids;
	NSString * uname;
	NSString * pid;
	NSString * pcode;
	NSString * pname;
	NSString * token;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_modify_users *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * action;
@property (retain) NSString * id_;
@property (retain) NSString * uids;
@property (retain) NSString * uname;
@property (retain) NSString * pid;
@property (retain) NSString * pcode;
@property (retain) NSString * pname;
@property (retain) NSString * token;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_modify_usersResponse : NSObject {
	
/* elements */
	NSString * modify_usersResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_modify_usersResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * modify_usersResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_modify_users_head : NSObject {
	
/* elements */
	NSString * id_;
	NSString * url;
	NSString * token;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_modify_users_head *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * id_;
@property (retain) NSString * url;
@property (retain) NSString * token;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_modify_users_headResponse : NSObject {
	
/* elements */
	NSString * modify_users_headResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_modify_users_headResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * modify_users_headResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_save_photo_to_file : NSObject {
	
/* elements */
	NSString * filename;
	NSString * data;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_save_photo_to_file *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * filename;
@property (retain) NSString * data;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_save_photo_to_fileResponse : NSObject {
	
/* elements */
	NSString * save_photo_to_fileResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_save_photo_to_fileResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * save_photo_to_fileResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_uf_commit_sp : NSObject {
	
/* elements */
	NSString * id_;
	NSString * yxbz;
	NSString * sfgs;
	NSString * token;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_uf_commit_sp *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * id_;
@property (retain) NSString * yxbz;
@property (retain) NSString * sfgs;
@property (retain) NSString * token;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_uf_commit_spResponse : NSObject {
	
/* elements */
	NSString * uf_commit_spResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_uf_commit_spResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * uf_commit_spResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_uf_login_out : NSObject {
	
/* elements */
	NSString * user_id;
	NSString * token;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_uf_login_out *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * user_id;
@property (retain) NSString * token;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_uf_login_outResponse : NSObject {
	
/* elements */
	NSString * uf_login_outResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_uf_login_outResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * uf_login_outResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_uf_send_sms : NSObject {
	
/* elements */
	NSString * phonenumber;
	NSString * token;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_uf_send_sms *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * phonenumber;
@property (retain) NSString * token;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_uf_send_smsResponse : NSObject {
	
/* elements */
	NSString * uf_send_smsResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_uf_send_smsResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * uf_send_smsResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_get_project_dxtz_json : NSObject {
	
/* elements */
	NSString * pro_id;
	NSString * menu_id;
	NSString * token;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_get_project_dxtz_json *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * pro_id;
@property (retain) NSString * menu_id;
@property (retain) NSString * token;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_get_project_dxtz_jsonResponse : NSObject {
	
/* elements */
	NSString * get_project_dxtz_jsonResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_get_project_dxtz_jsonResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * get_project_dxtz_jsonResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_uf_send_msg_tz : NSObject {
	
/* elements */
	NSString * gson;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_uf_send_msg_tz *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * gson;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_uf_send_msg_tzResponse : NSObject {
	
/* elements */
	NSString * uf_send_msg_tzResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_uf_send_msg_tzResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * uf_send_msg_tzResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_uf_test : NSObject {
	
/* elements */
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_uf_test *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_uf_testResponse : NSObject {
	
/* elements */
	NSString * uf_testResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_uf_testResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * uf_testResult;
/* attributes */
- (NSDictionary *)attributes;
@end
/* Cookies handling provided by http://en.wikibooks.org/wiki/Programming:WebObjects/Web_Services/Web_Service_Provider */
#import <libxml/parser.h>
#import "xsd.h"
#import "n_webservice.h"
@class n_webserviceSoapBinding;
@class n_webserviceSoap12Binding;
@interface n_webservice : NSObject {
	
}
+ (n_webserviceSoapBinding *)n_webserviceSoapBinding;
+ (n_webserviceSoap12Binding *)n_webserviceSoap12Binding;
@end
@class n_webserviceSoapBindingResponse;
@class n_webserviceSoapBindingOperation;
@protocol n_webserviceSoapBindingResponseDelegate <NSObject>
- (void) operation:(n_webserviceSoapBindingOperation *)operation completedWithResponse:(n_webserviceSoapBindingResponse *)response;
@end
@interface n_webserviceSoapBinding : NSObject <n_webserviceSoapBindingResponseDelegate> {
	NSURL *address;
	NSTimeInterval defaultTimeout;
	NSMutableArray *cookies;
	BOOL logXMLInOut;
	BOOL synchronousOperationComplete;
	NSString *authUsername;
	NSString *authPassword;
}
@property (copy) NSURL *address;
@property (assign) BOOL logXMLInOut;
@property (assign) NSTimeInterval defaultTimeout;
@property (nonatomic, retain) NSMutableArray *cookies;
@property (nonatomic, retain) NSString *authUsername;
@property (nonatomic, retain) NSString *authPassword;
- (id)initWithAddress:(NSString *)anAddress;
- (void)sendHTTPCallUsingBody:(NSString *)body soapAction:(NSString *)soapAction forOperation:(n_webserviceSoapBindingOperation *)operation;
- (void)addCookie:(NSHTTPCookie *)toAdd;
- (n_webserviceSoapBindingResponse *)uf_check_imeiUsingParameters:(n_webservice_uf_check_imei *)aParameters ;
- (void)uf_check_imeiAsyncUsingParameters:(n_webservice_uf_check_imei *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)uf_check_uidUsingParameters:(n_webservice_uf_check_uid *)aParameters ;
- (void)uf_check_uidAsyncUsingParameters:(n_webservice_uf_check_uid *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)uf_update_imeiUsingParameters:(n_webservice_uf_update_imei *)aParameters ;
- (void)uf_update_imeiAsyncUsingParameters:(n_webservice_uf_update_imei *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)uf_check_imei_jsonUsingParameters:(n_webservice_uf_check_imei_json *)aParameters ;
- (void)uf_check_imei_jsonAsyncUsingParameters:(n_webservice_uf_check_imei_json *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)uf_send_msgsUsingParameters:(n_webservice_uf_send_msgs *)aParameters ;
- (void)uf_send_msgsAsyncUsingParameters:(n_webservice_uf_send_msgs *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)get_cf1_jsonUsingParameters:(n_webservice_get_cf1_json *)aParameters ;
- (void)get_cf1_jsonAsyncUsingParameters:(n_webservice_get_cf1_json *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)get_cf2_jsonUsingParameters:(n_webservice_get_cf2_json *)aParameters ;
- (void)get_cf2_jsonAsyncUsingParameters:(n_webservice_get_cf2_json *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)get_department_filterUsingParameters:(n_webservice_get_department_filter *)aParameters ;
- (void)get_department_filterAsyncUsingParameters:(n_webservice_get_department_filter *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)get_department_jsonUsingParameters:(n_webservice_get_department_json *)aParameters ;
- (void)get_department_jsonAsyncUsingParameters:(n_webservice_get_department_json *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)get_department_users_jsonUsingParameters:(n_webservice_get_department_users_json *)aParameters ;
- (void)get_department_users_jsonAsyncUsingParameters:(n_webservice_get_department_users_json *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)get_menu_all_jsonUsingParameters:(n_webservice_get_menu_all_json *)aParameters ;
- (void)get_menu_all_jsonAsyncUsingParameters:(n_webservice_get_menu_all_json *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)get_menu_jsonUsingParameters:(n_webservice_get_menu_json *)aParameters ;
- (void)get_menu_jsonAsyncUsingParameters:(n_webservice_get_menu_json *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)get_project_all_jsonUsingParameters:(n_webservice_get_project_all_json *)aParameters ;
- (void)get_project_all_jsonAsyncUsingParameters:(n_webservice_get_project_all_json *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)get_project_jsonUsingParameters:(n_webservice_get_project_json *)aParameters ;
- (void)get_project_jsonAsyncUsingParameters:(n_webservice_get_project_json *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)get_project_menu_jsonUsingParameters:(n_webservice_get_project_menu_json *)aParameters ;
- (void)get_project_menu_jsonAsyncUsingParameters:(n_webservice_get_project_menu_json *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)get_project_sp_jsonUsingParameters:(n_webservice_get_project_sp_json *)aParameters ;
- (void)get_project_sp_jsonAsyncUsingParameters:(n_webservice_get_project_sp_json *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)get_sp_numberUsingParameters:(n_webservice_get_sp_number *)aParameters ;
- (void)get_sp_numberAsyncUsingParameters:(n_webservice_get_sp_number *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)get_user_by_pid_jsonUsingParameters:(n_webservice_get_user_by_pid_json *)aParameters ;
- (void)get_user_by_pid_jsonAsyncUsingParameters:(n_webservice_get_user_by_pid_json *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)get_users_by_menuUsingParameters:(n_webservice_get_users_by_menu *)aParameters ;
- (void)get_users_by_menuAsyncUsingParameters:(n_webservice_get_users_by_menu *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)get_users_jsonUsingParameters:(n_webservice_get_users_json *)aParameters ;
- (void)get_users_jsonAsyncUsingParameters:(n_webservice_get_users_json *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)modify_departmentUsingParameters:(n_webservice_modify_department *)aParameters ;
- (void)modify_departmentAsyncUsingParameters:(n_webservice_modify_department *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)modify_project_jd_jsonUsingParameters:(n_webservice_modify_project_jd_json *)aParameters ;
- (void)modify_project_jd_jsonAsyncUsingParameters:(n_webservice_modify_project_jd_json *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)modify_project_jsonUsingParameters:(n_webservice_modify_project_json *)aParameters ;
- (void)modify_project_jsonAsyncUsingParameters:(n_webservice_modify_project_json *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)modify_rollsUsingParameters:(n_webservice_modify_rolls *)aParameters ;
- (void)modify_rollsAsyncUsingParameters:(n_webservice_modify_rolls *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)modify_usersUsingParameters:(n_webservice_modify_users *)aParameters ;
- (void)modify_usersAsyncUsingParameters:(n_webservice_modify_users *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)modify_users_headUsingParameters:(n_webservice_modify_users_head *)aParameters ;
- (void)modify_users_headAsyncUsingParameters:(n_webservice_modify_users_head *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)save_photo_to_fileUsingParameters:(n_webservice_save_photo_to_file *)aParameters ;
- (void)save_photo_to_fileAsyncUsingParameters:(n_webservice_save_photo_to_file *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)uf_commit_spUsingParameters:(n_webservice_uf_commit_sp *)aParameters ;
- (void)uf_commit_spAsyncUsingParameters:(n_webservice_uf_commit_sp *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)uf_login_outUsingParameters:(n_webservice_uf_login_out *)aParameters ;
- (void)uf_login_outAsyncUsingParameters:(n_webservice_uf_login_out *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)uf_send_smsUsingParameters:(n_webservice_uf_send_sms *)aParameters ;
- (void)uf_send_smsAsyncUsingParameters:(n_webservice_uf_send_sms *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)get_project_dxtz_jsonUsingParameters:(n_webservice_get_project_dxtz_json *)aParameters ;
- (void)get_project_dxtz_jsonAsyncUsingParameters:(n_webservice_get_project_dxtz_json *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)uf_send_msg_tzUsingParameters:(n_webservice_uf_send_msg_tz *)aParameters ;
- (void)uf_send_msg_tzAsyncUsingParameters:(n_webservice_uf_send_msg_tz *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)uf_testUsingParameters:(n_webservice_uf_test *)aParameters ;
- (void)uf_testAsyncUsingParameters:(n_webservice_uf_test *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
@end
@interface n_webserviceSoapBindingOperation : NSOperation {
	n_webserviceSoapBinding *binding;
	n_webserviceSoapBindingResponse *response;
	id<n_webserviceSoapBindingResponseDelegate> delegate;
	NSMutableData *responseData;
	NSURLConnection *urlConnection;
}
@property (retain) n_webserviceSoapBinding *binding;
@property (readonly) n_webserviceSoapBindingResponse *response;
@property (nonatomic, assign) id<n_webserviceSoapBindingResponseDelegate> delegate;
@property (nonatomic, retain) NSMutableData *responseData;
@property (nonatomic, retain) NSURLConnection *urlConnection;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate;
@end
@interface n_webserviceSoapBinding_uf_check_imei : n_webserviceSoapBindingOperation {
	n_webservice_uf_check_imei * parameters;
}
@property (retain) n_webservice_uf_check_imei * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_uf_check_imei *)aParameters
;
@end
@interface n_webserviceSoapBinding_uf_check_uid : n_webserviceSoapBindingOperation {
	n_webservice_uf_check_uid * parameters;
}
@property (retain) n_webservice_uf_check_uid * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_uf_check_uid *)aParameters
;
@end
@interface n_webserviceSoapBinding_uf_update_imei : n_webserviceSoapBindingOperation {
	n_webservice_uf_update_imei * parameters;
}
@property (retain) n_webservice_uf_update_imei * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_uf_update_imei *)aParameters
;
@end
@interface n_webserviceSoapBinding_uf_check_imei_json : n_webserviceSoapBindingOperation {
	n_webservice_uf_check_imei_json * parameters;
}
@property (retain) n_webservice_uf_check_imei_json * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_uf_check_imei_json *)aParameters
;
@end
@interface n_webserviceSoapBinding_uf_send_msgs : n_webserviceSoapBindingOperation {
	n_webservice_uf_send_msgs * parameters;
}
@property (retain) n_webservice_uf_send_msgs * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_uf_send_msgs *)aParameters
;
@end
@interface n_webserviceSoapBinding_get_cf1_json : n_webserviceSoapBindingOperation {
	n_webservice_get_cf1_json * parameters;
}
@property (retain) n_webservice_get_cf1_json * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_get_cf1_json *)aParameters
;
@end
@interface n_webserviceSoapBinding_get_cf2_json : n_webserviceSoapBindingOperation {
	n_webservice_get_cf2_json * parameters;
}
@property (retain) n_webservice_get_cf2_json * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_get_cf2_json *)aParameters
;
@end
@interface n_webserviceSoapBinding_get_department_filter : n_webserviceSoapBindingOperation {
	n_webservice_get_department_filter * parameters;
}
@property (retain) n_webservice_get_department_filter * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_get_department_filter *)aParameters
;
@end
@interface n_webserviceSoapBinding_get_department_json : n_webserviceSoapBindingOperation {
	n_webservice_get_department_json * parameters;
}
@property (retain) n_webservice_get_department_json * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_get_department_json *)aParameters
;
@end
@interface n_webserviceSoapBinding_get_department_users_json : n_webserviceSoapBindingOperation {
	n_webservice_get_department_users_json * parameters;
}
@property (retain) n_webservice_get_department_users_json * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_get_department_users_json *)aParameters
;
@end
@interface n_webserviceSoapBinding_get_menu_all_json : n_webserviceSoapBindingOperation {
	n_webservice_get_menu_all_json * parameters;
}
@property (retain) n_webservice_get_menu_all_json * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_get_menu_all_json *)aParameters
;
@end
@interface n_webserviceSoapBinding_get_menu_json : n_webserviceSoapBindingOperation {
	n_webservice_get_menu_json * parameters;
}
@property (retain) n_webservice_get_menu_json * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_get_menu_json *)aParameters
;
@end
@interface n_webserviceSoapBinding_get_project_all_json : n_webserviceSoapBindingOperation {
	n_webservice_get_project_all_json * parameters;
}
@property (retain) n_webservice_get_project_all_json * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_get_project_all_json *)aParameters
;
@end
@interface n_webserviceSoapBinding_get_project_json : n_webserviceSoapBindingOperation {
	n_webservice_get_project_json * parameters;
}
@property (retain) n_webservice_get_project_json * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_get_project_json *)aParameters
;
@end
@interface n_webserviceSoapBinding_get_project_menu_json : n_webserviceSoapBindingOperation {
	n_webservice_get_project_menu_json * parameters;
}
@property (retain) n_webservice_get_project_menu_json * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_get_project_menu_json *)aParameters
;
@end
@interface n_webserviceSoapBinding_get_project_sp_json : n_webserviceSoapBindingOperation {
	n_webservice_get_project_sp_json * parameters;
}
@property (retain) n_webservice_get_project_sp_json * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_get_project_sp_json *)aParameters
;
@end
@interface n_webserviceSoapBinding_get_sp_number : n_webserviceSoapBindingOperation {
	n_webservice_get_sp_number * parameters;
}
@property (retain) n_webservice_get_sp_number * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_get_sp_number *)aParameters
;
@end
@interface n_webserviceSoapBinding_get_user_by_pid_json : n_webserviceSoapBindingOperation {
	n_webservice_get_user_by_pid_json * parameters;
}
@property (retain) n_webservice_get_user_by_pid_json * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_get_user_by_pid_json *)aParameters
;
@end
@interface n_webserviceSoapBinding_get_users_by_menu : n_webserviceSoapBindingOperation {
	n_webservice_get_users_by_menu * parameters;
}
@property (retain) n_webservice_get_users_by_menu * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_get_users_by_menu *)aParameters
;
@end
@interface n_webserviceSoapBinding_get_users_json : n_webserviceSoapBindingOperation {
	n_webservice_get_users_json * parameters;
}
@property (retain) n_webservice_get_users_json * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_get_users_json *)aParameters
;
@end
@interface n_webserviceSoapBinding_modify_department : n_webserviceSoapBindingOperation {
	n_webservice_modify_department * parameters;
}
@property (retain) n_webservice_modify_department * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_modify_department *)aParameters
;
@end
@interface n_webserviceSoapBinding_modify_project_jd_json : n_webserviceSoapBindingOperation {
	n_webservice_modify_project_jd_json * parameters;
}
@property (retain) n_webservice_modify_project_jd_json * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_modify_project_jd_json *)aParameters
;
@end
@interface n_webserviceSoapBinding_modify_project_json : n_webserviceSoapBindingOperation {
	n_webservice_modify_project_json * parameters;
}
@property (retain) n_webservice_modify_project_json * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_modify_project_json *)aParameters
;
@end
@interface n_webserviceSoapBinding_modify_rolls : n_webserviceSoapBindingOperation {
	n_webservice_modify_rolls * parameters;
}
@property (retain) n_webservice_modify_rolls * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_modify_rolls *)aParameters
;
@end
@interface n_webserviceSoapBinding_modify_users : n_webserviceSoapBindingOperation {
	n_webservice_modify_users * parameters;
}
@property (retain) n_webservice_modify_users * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_modify_users *)aParameters
;
@end
@interface n_webserviceSoapBinding_modify_users_head : n_webserviceSoapBindingOperation {
	n_webservice_modify_users_head * parameters;
}
@property (retain) n_webservice_modify_users_head * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_modify_users_head *)aParameters
;
@end
@interface n_webserviceSoapBinding_save_photo_to_file : n_webserviceSoapBindingOperation {
	n_webservice_save_photo_to_file * parameters;
}
@property (retain) n_webservice_save_photo_to_file * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_save_photo_to_file *)aParameters
;
@end
@interface n_webserviceSoapBinding_uf_commit_sp : n_webserviceSoapBindingOperation {
	n_webservice_uf_commit_sp * parameters;
}
@property (retain) n_webservice_uf_commit_sp * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_uf_commit_sp *)aParameters
;
@end
@interface n_webserviceSoapBinding_uf_login_out : n_webserviceSoapBindingOperation {
	n_webservice_uf_login_out * parameters;
}
@property (retain) n_webservice_uf_login_out * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_uf_login_out *)aParameters
;
@end
@interface n_webserviceSoapBinding_uf_send_sms : n_webserviceSoapBindingOperation {
	n_webservice_uf_send_sms * parameters;
}
@property (retain) n_webservice_uf_send_sms * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_uf_send_sms *)aParameters
;
@end
@interface n_webserviceSoapBinding_get_project_dxtz_json : n_webserviceSoapBindingOperation {
	n_webservice_get_project_dxtz_json * parameters;
}
@property (retain) n_webservice_get_project_dxtz_json * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_get_project_dxtz_json *)aParameters
;
@end
@interface n_webserviceSoapBinding_uf_send_msg_tz : n_webserviceSoapBindingOperation {
	n_webservice_uf_send_msg_tz * parameters;
}
@property (retain) n_webservice_uf_send_msg_tz * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_uf_send_msg_tz *)aParameters
;
@end
@interface n_webserviceSoapBinding_uf_test : n_webserviceSoapBindingOperation {
	n_webservice_uf_test * parameters;
}
@property (retain) n_webservice_uf_test * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_uf_test *)aParameters
;
@end
@interface n_webserviceSoapBinding_envelope : NSObject {
}
+ (n_webserviceSoapBinding_envelope *)sharedInstance;
- (NSString *)serializedFormUsingHeaderElements:(NSDictionary *)headerElements bodyElements:(NSDictionary *)bodyElements;
@end
@interface n_webserviceSoapBindingResponse : NSObject {
	NSArray *headers;
	NSArray *bodyParts;
	NSError *error;
}
@property (retain) NSArray *headers;
@property (retain) NSArray *bodyParts;
@property (retain) NSError *error;
@end
@class n_webserviceSoap12BindingResponse;
@class n_webserviceSoap12BindingOperation;
@protocol n_webserviceSoap12BindingResponseDelegate <NSObject>
- (void) operation:(n_webserviceSoap12BindingOperation *)operation completedWithResponse:(n_webserviceSoap12BindingResponse *)response;
@end
@interface n_webserviceSoap12Binding : NSObject <n_webserviceSoap12BindingResponseDelegate> {
	NSURL *address;
	NSTimeInterval defaultTimeout;
	NSMutableArray *cookies;
	BOOL logXMLInOut;
	BOOL synchronousOperationComplete;
	NSString *authUsername;
	NSString *authPassword;
}
@property (copy) NSURL *address;
@property (assign) BOOL logXMLInOut;
@property (assign) NSTimeInterval defaultTimeout;
@property (nonatomic, retain) NSMutableArray *cookies;
@property (nonatomic, retain) NSString *authUsername;
@property (nonatomic, retain) NSString *authPassword;
- (id)initWithAddress:(NSString *)anAddress;
- (void)sendHTTPCallUsingBody:(NSString *)body soapAction:(NSString *)soapAction forOperation:(n_webserviceSoap12BindingOperation *)operation;
- (void)addCookie:(NSHTTPCookie *)toAdd;
- (n_webserviceSoap12BindingResponse *)uf_check_imeiUsingParameters:(n_webservice_uf_check_imei *)aParameters ;
- (void)uf_check_imeiAsyncUsingParameters:(n_webservice_uf_check_imei *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)uf_check_uidUsingParameters:(n_webservice_uf_check_uid *)aParameters ;
- (void)uf_check_uidAsyncUsingParameters:(n_webservice_uf_check_uid *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)uf_update_imeiUsingParameters:(n_webservice_uf_update_imei *)aParameters ;
- (void)uf_update_imeiAsyncUsingParameters:(n_webservice_uf_update_imei *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)uf_check_imei_jsonUsingParameters:(n_webservice_uf_check_imei_json *)aParameters ;
- (void)uf_check_imei_jsonAsyncUsingParameters:(n_webservice_uf_check_imei_json *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)uf_send_msgsUsingParameters:(n_webservice_uf_send_msgs *)aParameters ;
- (void)uf_send_msgsAsyncUsingParameters:(n_webservice_uf_send_msgs *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)get_cf1_jsonUsingParameters:(n_webservice_get_cf1_json *)aParameters ;
- (void)get_cf1_jsonAsyncUsingParameters:(n_webservice_get_cf1_json *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)get_cf2_jsonUsingParameters:(n_webservice_get_cf2_json *)aParameters ;
- (void)get_cf2_jsonAsyncUsingParameters:(n_webservice_get_cf2_json *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)get_department_filterUsingParameters:(n_webservice_get_department_filter *)aParameters ;
- (void)get_department_filterAsyncUsingParameters:(n_webservice_get_department_filter *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)get_department_jsonUsingParameters:(n_webservice_get_department_json *)aParameters ;
- (void)get_department_jsonAsyncUsingParameters:(n_webservice_get_department_json *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)get_department_users_jsonUsingParameters:(n_webservice_get_department_users_json *)aParameters ;
- (void)get_department_users_jsonAsyncUsingParameters:(n_webservice_get_department_users_json *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)get_menu_all_jsonUsingParameters:(n_webservice_get_menu_all_json *)aParameters ;
- (void)get_menu_all_jsonAsyncUsingParameters:(n_webservice_get_menu_all_json *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)get_menu_jsonUsingParameters:(n_webservice_get_menu_json *)aParameters ;
- (void)get_menu_jsonAsyncUsingParameters:(n_webservice_get_menu_json *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)get_project_all_jsonUsingParameters:(n_webservice_get_project_all_json *)aParameters ;
- (void)get_project_all_jsonAsyncUsingParameters:(n_webservice_get_project_all_json *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)get_project_jsonUsingParameters:(n_webservice_get_project_json *)aParameters ;
- (void)get_project_jsonAsyncUsingParameters:(n_webservice_get_project_json *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)get_project_menu_jsonUsingParameters:(n_webservice_get_project_menu_json *)aParameters ;
- (void)get_project_menu_jsonAsyncUsingParameters:(n_webservice_get_project_menu_json *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)get_project_sp_jsonUsingParameters:(n_webservice_get_project_sp_json *)aParameters ;
- (void)get_project_sp_jsonAsyncUsingParameters:(n_webservice_get_project_sp_json *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)get_sp_numberUsingParameters:(n_webservice_get_sp_number *)aParameters ;
- (void)get_sp_numberAsyncUsingParameters:(n_webservice_get_sp_number *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)get_user_by_pid_jsonUsingParameters:(n_webservice_get_user_by_pid_json *)aParameters ;
- (void)get_user_by_pid_jsonAsyncUsingParameters:(n_webservice_get_user_by_pid_json *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)get_users_by_menuUsingParameters:(n_webservice_get_users_by_menu *)aParameters ;
- (void)get_users_by_menuAsyncUsingParameters:(n_webservice_get_users_by_menu *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)get_users_jsonUsingParameters:(n_webservice_get_users_json *)aParameters ;
- (void)get_users_jsonAsyncUsingParameters:(n_webservice_get_users_json *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)modify_departmentUsingParameters:(n_webservice_modify_department *)aParameters ;
- (void)modify_departmentAsyncUsingParameters:(n_webservice_modify_department *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)modify_project_jd_jsonUsingParameters:(n_webservice_modify_project_jd_json *)aParameters ;
- (void)modify_project_jd_jsonAsyncUsingParameters:(n_webservice_modify_project_jd_json *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)modify_project_jsonUsingParameters:(n_webservice_modify_project_json *)aParameters ;
- (void)modify_project_jsonAsyncUsingParameters:(n_webservice_modify_project_json *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)modify_rollsUsingParameters:(n_webservice_modify_rolls *)aParameters ;
- (void)modify_rollsAsyncUsingParameters:(n_webservice_modify_rolls *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)modify_usersUsingParameters:(n_webservice_modify_users *)aParameters ;
- (void)modify_usersAsyncUsingParameters:(n_webservice_modify_users *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)modify_users_headUsingParameters:(n_webservice_modify_users_head *)aParameters ;
- (void)modify_users_headAsyncUsingParameters:(n_webservice_modify_users_head *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)save_photo_to_fileUsingParameters:(n_webservice_save_photo_to_file *)aParameters ;
- (void)save_photo_to_fileAsyncUsingParameters:(n_webservice_save_photo_to_file *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)uf_commit_spUsingParameters:(n_webservice_uf_commit_sp *)aParameters ;
- (void)uf_commit_spAsyncUsingParameters:(n_webservice_uf_commit_sp *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)uf_login_outUsingParameters:(n_webservice_uf_login_out *)aParameters ;
- (void)uf_login_outAsyncUsingParameters:(n_webservice_uf_login_out *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)uf_send_smsUsingParameters:(n_webservice_uf_send_sms *)aParameters ;
- (void)uf_send_smsAsyncUsingParameters:(n_webservice_uf_send_sms *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)get_project_dxtz_jsonUsingParameters:(n_webservice_get_project_dxtz_json *)aParameters ;
- (void)get_project_dxtz_jsonAsyncUsingParameters:(n_webservice_get_project_dxtz_json *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)uf_send_msg_tzUsingParameters:(n_webservice_uf_send_msg_tz *)aParameters ;
- (void)uf_send_msg_tzAsyncUsingParameters:(n_webservice_uf_send_msg_tz *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)uf_testUsingParameters:(n_webservice_uf_test *)aParameters ;
- (void)uf_testAsyncUsingParameters:(n_webservice_uf_test *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
@end
@interface n_webserviceSoap12BindingOperation : NSOperation {
	n_webserviceSoap12Binding *binding;
	n_webserviceSoap12BindingResponse *response;
	id<n_webserviceSoap12BindingResponseDelegate> delegate;
	NSMutableData *responseData;
	NSURLConnection *urlConnection;
}
@property (retain) n_webserviceSoap12Binding *binding;
@property (readonly) n_webserviceSoap12BindingResponse *response;
@property (nonatomic, assign) id<n_webserviceSoap12BindingResponseDelegate> delegate;
@property (nonatomic, retain) NSMutableData *responseData;
@property (nonatomic, retain) NSURLConnection *urlConnection;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate;
@end
@interface n_webserviceSoap12Binding_uf_check_imei : n_webserviceSoap12BindingOperation {
	n_webservice_uf_check_imei * parameters;
}
@property (retain) n_webservice_uf_check_imei * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_uf_check_imei *)aParameters
;
@end
@interface n_webserviceSoap12Binding_uf_check_uid : n_webserviceSoap12BindingOperation {
	n_webservice_uf_check_uid * parameters;
}
@property (retain) n_webservice_uf_check_uid * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_uf_check_uid *)aParameters
;
@end
@interface n_webserviceSoap12Binding_uf_update_imei : n_webserviceSoap12BindingOperation {
	n_webservice_uf_update_imei * parameters;
}
@property (retain) n_webservice_uf_update_imei * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_uf_update_imei *)aParameters
;
@end
@interface n_webserviceSoap12Binding_uf_check_imei_json : n_webserviceSoap12BindingOperation {
	n_webservice_uf_check_imei_json * parameters;
}
@property (retain) n_webservice_uf_check_imei_json * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_uf_check_imei_json *)aParameters
;
@end
@interface n_webserviceSoap12Binding_uf_send_msgs : n_webserviceSoap12BindingOperation {
	n_webservice_uf_send_msgs * parameters;
}
@property (retain) n_webservice_uf_send_msgs * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_uf_send_msgs *)aParameters
;
@end
@interface n_webserviceSoap12Binding_get_cf1_json : n_webserviceSoap12BindingOperation {
	n_webservice_get_cf1_json * parameters;
}
@property (retain) n_webservice_get_cf1_json * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_get_cf1_json *)aParameters
;
@end
@interface n_webserviceSoap12Binding_get_cf2_json : n_webserviceSoap12BindingOperation {
	n_webservice_get_cf2_json * parameters;
}
@property (retain) n_webservice_get_cf2_json * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_get_cf2_json *)aParameters
;
@end
@interface n_webserviceSoap12Binding_get_department_filter : n_webserviceSoap12BindingOperation {
	n_webservice_get_department_filter * parameters;
}
@property (retain) n_webservice_get_department_filter * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_get_department_filter *)aParameters
;
@end
@interface n_webserviceSoap12Binding_get_department_json : n_webserviceSoap12BindingOperation {
	n_webservice_get_department_json * parameters;
}
@property (retain) n_webservice_get_department_json * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_get_department_json *)aParameters
;
@end
@interface n_webserviceSoap12Binding_get_department_users_json : n_webserviceSoap12BindingOperation {
	n_webservice_get_department_users_json * parameters;
}
@property (retain) n_webservice_get_department_users_json * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_get_department_users_json *)aParameters
;
@end
@interface n_webserviceSoap12Binding_get_menu_all_json : n_webserviceSoap12BindingOperation {
	n_webservice_get_menu_all_json * parameters;
}
@property (retain) n_webservice_get_menu_all_json * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_get_menu_all_json *)aParameters
;
@end
@interface n_webserviceSoap12Binding_get_menu_json : n_webserviceSoap12BindingOperation {
	n_webservice_get_menu_json * parameters;
}
@property (retain) n_webservice_get_menu_json * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_get_menu_json *)aParameters
;
@end
@interface n_webserviceSoap12Binding_get_project_all_json : n_webserviceSoap12BindingOperation {
	n_webservice_get_project_all_json * parameters;
}
@property (retain) n_webservice_get_project_all_json * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_get_project_all_json *)aParameters
;
@end
@interface n_webserviceSoap12Binding_get_project_json : n_webserviceSoap12BindingOperation {
	n_webservice_get_project_json * parameters;
}
@property (retain) n_webservice_get_project_json * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_get_project_json *)aParameters
;
@end
@interface n_webserviceSoap12Binding_get_project_menu_json : n_webserviceSoap12BindingOperation {
	n_webservice_get_project_menu_json * parameters;
}
@property (retain) n_webservice_get_project_menu_json * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_get_project_menu_json *)aParameters
;
@end
@interface n_webserviceSoap12Binding_get_project_sp_json : n_webserviceSoap12BindingOperation {
	n_webservice_get_project_sp_json * parameters;
}
@property (retain) n_webservice_get_project_sp_json * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_get_project_sp_json *)aParameters
;
@end
@interface n_webserviceSoap12Binding_get_sp_number : n_webserviceSoap12BindingOperation {
	n_webservice_get_sp_number * parameters;
}
@property (retain) n_webservice_get_sp_number * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_get_sp_number *)aParameters
;
@end
@interface n_webserviceSoap12Binding_get_user_by_pid_json : n_webserviceSoap12BindingOperation {
	n_webservice_get_user_by_pid_json * parameters;
}
@property (retain) n_webservice_get_user_by_pid_json * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_get_user_by_pid_json *)aParameters
;
@end
@interface n_webserviceSoap12Binding_get_users_by_menu : n_webserviceSoap12BindingOperation {
	n_webservice_get_users_by_menu * parameters;
}
@property (retain) n_webservice_get_users_by_menu * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_get_users_by_menu *)aParameters
;
@end
@interface n_webserviceSoap12Binding_get_users_json : n_webserviceSoap12BindingOperation {
	n_webservice_get_users_json * parameters;
}
@property (retain) n_webservice_get_users_json * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_get_users_json *)aParameters
;
@end
@interface n_webserviceSoap12Binding_modify_department : n_webserviceSoap12BindingOperation {
	n_webservice_modify_department * parameters;
}
@property (retain) n_webservice_modify_department * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_modify_department *)aParameters
;
@end
@interface n_webserviceSoap12Binding_modify_project_jd_json : n_webserviceSoap12BindingOperation {
	n_webservice_modify_project_jd_json * parameters;
}
@property (retain) n_webservice_modify_project_jd_json * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_modify_project_jd_json *)aParameters
;
@end
@interface n_webserviceSoap12Binding_modify_project_json : n_webserviceSoap12BindingOperation {
	n_webservice_modify_project_json * parameters;
}
@property (retain) n_webservice_modify_project_json * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_modify_project_json *)aParameters
;
@end
@interface n_webserviceSoap12Binding_modify_rolls : n_webserviceSoap12BindingOperation {
	n_webservice_modify_rolls * parameters;
}
@property (retain) n_webservice_modify_rolls * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_modify_rolls *)aParameters
;
@end
@interface n_webserviceSoap12Binding_modify_users : n_webserviceSoap12BindingOperation {
	n_webservice_modify_users * parameters;
}
@property (retain) n_webservice_modify_users * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_modify_users *)aParameters
;
@end
@interface n_webserviceSoap12Binding_modify_users_head : n_webserviceSoap12BindingOperation {
	n_webservice_modify_users_head * parameters;
}
@property (retain) n_webservice_modify_users_head * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_modify_users_head *)aParameters
;
@end
@interface n_webserviceSoap12Binding_save_photo_to_file : n_webserviceSoap12BindingOperation {
	n_webservice_save_photo_to_file * parameters;
}
@property (retain) n_webservice_save_photo_to_file * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_save_photo_to_file *)aParameters
;
@end
@interface n_webserviceSoap12Binding_uf_commit_sp : n_webserviceSoap12BindingOperation {
	n_webservice_uf_commit_sp * parameters;
}
@property (retain) n_webservice_uf_commit_sp * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_uf_commit_sp *)aParameters
;
@end
@interface n_webserviceSoap12Binding_uf_login_out : n_webserviceSoap12BindingOperation {
	n_webservice_uf_login_out * parameters;
}
@property (retain) n_webservice_uf_login_out * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_uf_login_out *)aParameters
;
@end
@interface n_webserviceSoap12Binding_uf_send_sms : n_webserviceSoap12BindingOperation {
	n_webservice_uf_send_sms * parameters;
}
@property (retain) n_webservice_uf_send_sms * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_uf_send_sms *)aParameters
;
@end
@interface n_webserviceSoap12Binding_get_project_dxtz_json : n_webserviceSoap12BindingOperation {
	n_webservice_get_project_dxtz_json * parameters;
}
@property (retain) n_webservice_get_project_dxtz_json * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_get_project_dxtz_json *)aParameters
;
@end
@interface n_webserviceSoap12Binding_uf_send_msg_tz : n_webserviceSoap12BindingOperation {
	n_webservice_uf_send_msg_tz * parameters;
}
@property (retain) n_webservice_uf_send_msg_tz * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_uf_send_msg_tz *)aParameters
;
@end
@interface n_webserviceSoap12Binding_uf_test : n_webserviceSoap12BindingOperation {
	n_webservice_uf_test * parameters;
}
@property (retain) n_webservice_uf_test * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_uf_test *)aParameters
;
@end
@interface n_webserviceSoap12Binding_envelope : NSObject {
}
+ (n_webserviceSoap12Binding_envelope *)sharedInstance;
- (NSString *)serializedFormUsingHeaderElements:(NSDictionary *)headerElements bodyElements:(NSDictionary *)bodyElements;
@end
@interface n_webserviceSoap12BindingResponse : NSObject {
	NSArray *headers;
	NSArray *bodyParts;
	NSError *error;
}
@property (retain) NSArray *headers;
@property (retain) NSArray *bodyParts;
@property (retain) NSError *error;
@end
