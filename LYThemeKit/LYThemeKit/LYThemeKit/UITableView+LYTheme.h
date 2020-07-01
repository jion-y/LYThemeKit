//
//  UITableView+LYTheme.h
//  LYThemeKit
//
//  Created by anita on 2020/7/1.
//  Copyright © 2020 anita. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITableView (LYTheme)
- (void)ly_sectionIndexColor:(NSArray *)colors;
- (void)ly_sectionIndexBackgroundColor:(NSArray *)colors;
- (void)ly_sectionIndexTrackingBackgroundColor:(NSArray *)colors;
- (void)ly_separatorColor:(NSArray *)colors;
@end

NS_ASSUME_NONNULL_END
