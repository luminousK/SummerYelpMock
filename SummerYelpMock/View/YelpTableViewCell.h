//
//  YelpTableViewCell.h
//  SummerYelpMock
//
//  Created by cyk on 2017/8/29.
//  Copyright © 2017年 cyk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YelpDataModel.h"

@interface YelpTableViewCell : UITableViewCell

- (void)updateBasedOnDataModel:(YelpDataModel *)dataModel;

@end

