
#import "UIAlertView+Utility.h"

@implementation UIAlertView (Utility)

+ (UIAlertView *)alertViewFromError:(NSError *)error {
	
	UIAlertView *result = [[UIAlertView alloc] initWithTitle:[error localizedFailureReason]
																										message:[error localizedDescription]
																									 delegate:nil
																					cancelButtonTitle:NSLocalizedString(@"OK", @"")
																					otherButtonTitles:nil];
	return result;
}

+ (void)showWithTitle:(NSString *)title message:(NSString *)message {
	
	[[[UIAlertView alloc] initWithTitle:title
															 message:message
															delegate:nil
										 cancelButtonTitle:NSLocalizedString(@"OK", @"")
										otherButtonTitles:nil] show];
}

+ (void)showWithMessage:(NSString *)message {
	[UIAlertView showWithTitle:@"" message:message];
}

@end
