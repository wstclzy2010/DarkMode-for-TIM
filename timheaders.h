@class QQNavigationRedNameLabel,C2CAioModelLabel;

@interface _UIBarBackground
@property (nonatomic, copy, readwrite) UIColor *backgroundColor;
@property (nonatomic, copy, readwrite) UIImageView *backgroundImageView;
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

@interface QQToolBarRootView : UIView
@end

@interface QQButton
@property(retain, nonatomic) UILabel *titleLabel;
@end

@interface MLSearchBar
{
    UIImageView *_bgView;
	UIImageView *_inputBarBgImageView;
}
@property(retain, nonatomic) UIView *inputBarBgView;
@end

@interface QQMessageViewBaseCell: UITableViewCell
{
    UILabel *_nickLabel;
}
@end

@interface QQMessageViewCell : UITableViewCell
{
	UILabel *nickLabel;
}
@end

@interface QQMessageView : UITableView
@end

@interface ODRefreshControl : UIControl
@end

@interface QQChatViewTable : UITableView
@end

@interface QQNavigationRedNameLabel : UILabel
@end

@interface C2CAioModelLabel : UILabel
@end

@interface QQInputbar : UIView
{
    UIImageView *_backgroundImageView;
    UIImageView *_textViewBackgroundImageView;
}
@property(retain, nonatomic) UIImageView *backgroundImageView;
@property(retain, nonatomic) UIImageView *textViewBackgroundImageView;
@end

@interface QQRelationTabScrollView : UIScrollView
@end

@interface NewFriendEntryView : UIView
{
    UILabel *_buttonTitleLable;
}
@end

@interface NavTabBar : UIView
@end

@interface QQView : UIView
@end

@interface FriendListHeaderView : UIView
@end

@interface RLFriendListCell : UITableViewCell
@property(retain, nonatomic) UILabel *nickLabel;
@property(retain, nonatomic) UILabel *stateLabel;
@property(retain, nonatomic) UILabel *tipsLabel;
@end

@interface LCFunctionCell : UICollectionViewCell
@property(retain, nonatomic) UILabel *subTitlebel;
@property(retain, nonatomic) UILabel *titleLabel;
@end

@interface LCMeHeaderView
@property(retain, nonatomic) UILabel *titleLabel;
@property(retain, nonatomic) UILabel *nickLabel;
@end