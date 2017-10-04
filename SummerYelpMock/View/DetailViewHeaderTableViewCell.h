//
//  DetailViewHeaderTableViewCell.h
//  SummerYelpMock
//
//  Created by cyk on 2017/9/5.
//  Copyright © 2017年 cyk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YelpDataModel.h"

@interface DetailViewHeaderTableViewCell : UITableViewCell

- (void)updateBasedOnDataModel:(YelpDataModel *)dataModel;

@end
