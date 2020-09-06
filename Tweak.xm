#import "timheaders.h"

%group  darkmode


///////////////////////////////////////////////////////////////////////////////////////

%hook UILabel
- (void)didMoveToWindow
{
	%orig;
	if([self.text isEqualToString:@"消息"]
		|| [self.text isEqualToString:@"联系人"])
		self.textColor = [UIColor colorWithRed:(255/255.0f) green:(255/255.0f)blue:(255/255.0f) alpha:0.8f];
	
	if([[[self nextResponder] nextResponder] isKindOfClass:%c(OnlineTitleView)])
		self.textColor = [UIColor colorWithRed:(255/255.0f) green:(255/255.0f)blue:(255/255.0f) alpha:0.8f];
}
%end

%hook _UIBarBackground
//顶部导航栏背景
-(void)didMoveToWindow
{
    %orig;
    [MSHookIvar<UIView *>(self, "_colorAndImageView1") setHidden:YES];
	//[MSHookIvar<UIView *>(self, "_backgroundImageView") setHidden:YES];
	self.backgroundColor = [UIColor colorWithRed:(20/255.0f) green:(20/255.0f)blue:(20/255.0f) alpha:1.0f];
	[UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;	
}
%end


%hook QQToolBarRootView
//底部tabbar背景
- (void)layoutSubviews
{
	%orig;
	self.backgroundColor = [UIColor colorWithRed:(20/255.0f) green:(20/255.0f)blue:(20/255.0f) alpha:1.0f];
}
%end

%hook QQButton
//tabbar的title颜色
- (void)viewDidLoad
{
	self.titleLabel.textColor = [UIColor colorWithRed:(255/255.0f) green:(255/255.0f)blue:(255/255.0f) alpha:0.8f];
	%orig;
}
%end


%hook MLSearchBar
//搜索栏颜色
- (void)layoutSubviews
{
	%orig;
	MSHookIvar<UIImageView *>(self, "_bgView").hidden = YES;
	MSHookIvar<UIImageView *>(self, "_inputBarBgImageView").hidden = YES;
	self.inputBarBgView.backgroundColor = [UIColor colorWithRed:(25/255.0f) green:(25/255.0f)blue:(25/255.0f) alpha:1.0f];
}
%end


%hook QQMessageViewBaseCell 
//非好友消息cell
- (void)layoutSubviews
{
	%orig;
	MSHookIvar<UILabel *>(self, "_nickLabel").textColor = [UIColor colorWithRed:(255/255.0f) green:(255/255.0f)blue:(255/255.0f) alpha:0.8f];
	self.backgroundColor = [UIColor colorWithRed:(25/255.0f) green:(25/255.0f)blue:(25/255.0f) alpha:1.0f];
	[UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
}
%end


%hook QQMessageViewCell
//好友消息cell
- (void)layoutSubviews
{
	%orig;
	MSHookIvar<UILabel *>(self, "nickLabel").textColor = [UIColor colorWithRed:(255/255.0f) green:(255/255.0f)blue:(255/255.0f) alpha:0.8f];
	self.backgroundColor = [UIColor colorWithRed:(25/255.0f) green:(25/255.0f)blue:(25/255.0f) alpha:1.0f];
	[UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
}
%end


%hook QQMessageView
- (void)layoutSubviews
{
	%orig;
	self.tableHeaderView.backgroundColor = [UIColor colorWithRed:(20/255.0f) green:(20/255.0f)blue:(20/255.0f) alpha:1.0f];
	self.backgroundColor = [UIColor colorWithRed:(27/255.0f) green:(27/255.0f)blue:(27/255.0f) alpha:1.0f];
}
%end


%hook ODRefreshControl
- (void)layoutSubviews
{
	%orig;
	self.backgroundColor = [UIColor colorWithRed:(20/255.0f) green:(20/255.0f)blue:(20/255.0f) alpha:1.0f];
}
%end


%hook QQChatViewTable
- (void)layoutSubviews
{
	%orig;
	self.backgroundColor = [UIColor colorWithRed:(27/255.0f) green:(27/255.0f)blue:(27/255.0f) alpha:1.0f];
}
%end


%hook QQNavigationRedNameLabel
- (void)setTextColor:(id)arg1
{
	%orig([UIColor colorWithRed:(255/255.0f) green:(255/255.0f)blue:(255/255.0f) alpha:0.8f]);
}
%end

%hook C2CAioModelLabel
+ (id)navigationBarTitleLabel
{
	UILabel *label = %orig;
	label.textColor = [UIColor colorWithRed:(255/255.0f) green:(255/255.0f)blue:(255/255.0f) alpha:0.8f];
	return label;
}
%end


%hook QQInputbar
- (void)layoutIfNeeded
{
	%orig;
	self.backgroundImageView.hidden = YES;
	[self.textViewBackgroundImageView setHidden:YES];
	//[self.textViewBackgroundImageView removeFromSuperview];
	//[self setTextViewBackgroundImageView:nil];
	self.backgroundColor = [UIColor colorWithRed:(22/255.0f) green:(22/255.0f)blue:(22/255.0f) alpha:1.0f];
}
%end


%hook QQRelationTabScrollView
- (void)layoutSubviews
{
	%orig;
	self.backgroundColor = [UIColor colorWithRed:(25/255.0f) green:(25/255.0f)blue:(25/255.0f) alpha:1.0f];
}
%end


%hook NewFriendEntryView
- (void)layoutSubviews
{
	%orig;
	MSHookIvar<UILabel *>(self, "_buttonTitleLable").textColor = [UIColor colorWithRed:(255/255.0f) green:(255/255.0f)blue:(255/255.0f) alpha:0.8f];
	self.backgroundColor = [UIColor colorWithRed:(25/255.0f) green:(25/255.0f)blue:(25/255.0f) alpha:1.0f];
}
%end


%hook NavTabBar
- (void)layoutSubviews
{
	%orig;
	self.backgroundColor = [UIColor colorWithRed:(25/255.0f) green:(25/255.0f)blue:(25/255.0f) alpha:1.0f];
}
%end


%hook QQView
- (void)layoutSubviews
{
	%orig;
	self.backgroundColor = [UIColor colorWithRed:(25/255.0f) green:(25/255.0f)blue:(25/255.0f) alpha:1.0f];
}
%end


%hook FriendListHeaderView
- (void)layoutSubviews
{
	%orig;
	self.backgroundColor = [UIColor colorWithRed:(25/255.0f) green:(25/255.0f)blue:(25/255.0f) alpha:1.0f];
}
%end


%hook RLFriendListCell
- (void)layoutSubviews
{
	%orig;
	self.nickLabel.textColor = [UIColor colorWithRed:(255/255.0f) green:(255/255.0f)blue:(255/255.0f) alpha:0.8f];
	self.stateLabel.textColor = [UIColor colorWithRed:(255/255.0f) green:(255/255.0f)blue:(255/255.0f) alpha:0.6f];
	self.tipsLabel.textColor = [UIColor colorWithRed:(255/255.0f) green:(255/255.0f)blue:(255/255.0f) alpha:0.6f];
	self.backgroundColor = [UIColor colorWithRed:(25/255.0f) green:(25/255.0f)blue:(25/255.0f) alpha:1.0f];
}
%end

%hook UIView
- (void)layoutSubviews
{
	%orig;
	if([[self nextResponder] isKindOfClass:%c(LCFunctionCell)])
		self.backgroundColor = [UIColor colorWithRed:(27/255.0f) green:(27/255.0f)blue:(27/255.0f) alpha:1.0f];
}
%end


%hook LCFunctionCell
- (void)layoutSubviews
{
	%orig;
	self.titleLabel.textColor = [UIColor colorWithRed:(255/255.0f) green:(255/255.0f)blue:(255/255.0f) alpha:0.8f];
	self.subTitlebel.textColor = [UIColor colorWithRed:(255/255.0f) green:(255/255.0f)blue:(255/255.0f) alpha:0.6f];
	self.backgroundColor = [UIColor colorWithRed:(27/255.0f) green:(27/255.0f)blue:(27/255.0f) alpha:1.0f];
}
%end


%hook LCMeHeaderView
- (void)layoutSubviews
{
	%orig;
	self.titleLabel.textColor = [UIColor colorWithRed:(255/255.0f) green:(255/255.0f)blue:(255/255.0f) alpha:0.8f];
	self.nickLabel.textColor = [UIColor colorWithRed:(255/255.0f) green:(255/255.0f)blue:(255/255.0f) alpha:0.6f];
}
%end

///////////////////////////////////////////////////////////////////////////////////////

%end


%ctor 
{
	@autoreleasepool
	{
		if (@available(iOS 13.0, *)) 
		{
			UIUserInterfaceStyle mode = UITraitCollection.currentTraitCollection.userInterfaceStyle;
			if (mode == UIUserInterfaceStyleDark) 
				%init(darkmode);
		}
	}
}