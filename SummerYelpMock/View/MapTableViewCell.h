//
//  MapTableViewCell.h
//  SummerYelpMock
//
//  Created by cyk on 2017/9/5.
//  Copyright © 2017年 cyk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YelpDataModel.h"
#import "YelpAnnotation.h"

@interface MapTableViewCell : UITableViewCell

- (void)updateBasedOnDataModel:(YelpDataModel *)dataModel;

@end
