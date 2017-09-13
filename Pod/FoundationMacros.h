
// misc
#define isNSNull(value)     ([value isKindOfClass:[NSNull class]])
#define isNull(value)       (value == NULL || isNSNull(value))
#define isNullString(value) (isNull(value) || [value length] == 0)
#define StringOrEmpty(value) (isNull(value) ? @"" : value)

// localalization
#define _(x)							NSLocalizedString(x, nil)

// device info
#define SHORT_IPHONE_HEIGHT	480
#define TALL_IPHONE_HEIGHT	568
#define IPHONE6_HEIGHT			667
#define IPHONE6PLUS_HEIGHT	736
#define IPHONEX_HEIGHT			812
#define IPHONE_LESS6_WIDTH	320
#define IPHONE_6_WIDTH			375
#define IPHONE_6PLUS_WIDTH	414

// devide info
#define IS_IPAD()										(UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
#define IS_SHORT_IPHONE()						([UIScreen mainScreen].bounds.size.height == SHORT_IPHONE_HEIGHT)
#define IS_TALL_IPHONE()						([UIScreen mainScreen].bounds.size.height == TALL_IPHONE_HEIGHT)
#define IS_IPHONE6()								([UIScreen mainScreen].bounds.size.height == IPHONE6_HEIGHT)
#define IS_IPHONE6_PLUS()						([UIScreen mainScreen].bounds.size.height == IPHONE6PLUS_HEIGHT)
#define IS_VERY_TALL_IPHONE()				([UIScreen mainScreen].bounds.size.height >= IPHONE6_HEIGHT)
#define IS_VERY_VERY_TALL_IPHONE()	([UIScreen mainScreen].bounds.size.height >= IPHONEX_HEIGHT)
// os info
#define IS_RETINA()       ([[UIScreen mainScreen] respondsToSelector:@selector(scale)] == YES && [[UIScreen mainScreen] scale] == 2.00)
#define IS_FLAT_UI()			([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0)
#define IS_IOS_7()				([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0 && [[[UIDevice currentDevice] systemVersion] floatValue] < 8.0)
#define IS_IOS_8()				([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0 && [[[UIDevice currentDevice] systemVersion] floatValue] < 9.0)
#define IS_IOS_80()				([[[UIDevice currentDevice] systemVersion] floatValue] == 8.0)

#define IS_IOS_8_OR_LATER()	([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0)
#define IS_IOS_9_OR_LATER()	([[[UIDevice currentDevice] systemVersion] floatValue] >= 9.0)
#define IS_IOS_11_OR_LATER()	([[[UIDevice currentDevice] systemVersion] floatValue] >= 11.0)

// metrics
#define TABBAR_HEIGHT (IS_VERY_VERY_TALL_IPHONE()?98:IS_IPAD()&&IS_IOS_7()?56:49)

// dynamic properties
#define ADD_DYNAMIC_PROPERTY(PROPERTY_TYPE,PROPERTY_NAME,SETTER_NAME) \
@dynamic PROPERTY_NAME ; \
static char kProperty##PROPERTY_NAME; \
- ( PROPERTY_TYPE ) PROPERTY_NAME \
{ \
return ( PROPERTY_TYPE ) objc_getAssociatedObject(self, &(kProperty##PROPERTY_NAME ) ); \
} \
\
- (void) SETTER_NAME :( PROPERTY_TYPE ) PROPERTY_NAME \
{ \
objc_setAssociatedObject(self, &kProperty##PROPERTY_NAME , PROPERTY_NAME , OBJC_ASSOCIATION_RETAIN); \
} \

// UI color stuff
#define UIColorFromRGB(rgbValue) \
	[UIColor colorWithRed:((float)(((rgbValue) & 0xFF0000) >> 16))/255.0 \
	green:((float)(((rgbValue) & 0xFF00) >> 8))/255.0 \
	blue:((float)(((rgbValue) & 0xFF)))/255.0 \
	alpha:1.0]



