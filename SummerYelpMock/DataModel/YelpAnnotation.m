//
//  YelpAnnotation.m
//  SummerYelpMock
//
//  Created by cyk on 2017/9/2.
//  Copyright © 2017年 cyk. All rights reserved.
//

#import "YelpAnnotation.h"
#import <UIImageView+AFNetworking.h>

@implementation YelpAnnotation


- (instancetype)initWithCoordinate:(CLLocationCoordinate2D)coordinate title:(NSString *)title subtitle:(NSString *)subtitle dataModel:(YelpDataModel *)dataModel
{
    if (self = [super init]) {
        _coordinate = coordinate;
        _title = title;
        _subtitle = subtitle;
        _dataModel = dataModel;
    }
    return self;
}

+ (NSArray <YelpAnnotation *>*)buildAnnotationArrayFromDataArray:(NSArray<YelpDataModel *> *)dataArray
{
    NSMutableArray<YelpAnnotation *> *annotationArray = [NSMutableArray new];
    
    for (YelpDataModel *dataModel in dataArray) {
        CLLocationCoordinate2D loc = CLLocationCoordinate2DMake(dataModel.latitude, dataModel.longitude);
        NSString *subtitle = [NSString stringWithFormat:@"%@ - %@",dataModel.categories,dataModel.displayAddress];
        YelpAnnotation *annotation = [[YelpAnnotation alloc] initWithCoordinate:loc title:dataModel.name subtitle:subtitle dataModel:dataModel];
        [annotationArray addObject:annotation];
    }
    return [annotationArray copy];
}


#pragma mark - Map methods

// Show customized callout for each business annotation
- (void)mapView:(MKMapView *)mapView didSelectAnnotationView:(MKAnnotationView *)view {
    // If the annotation is the user location, just return nil.
    if ([view.annotation isKindOfClass:[MKUserLocation class]]) {
        return;
    }
    
    // Add a custom image to the left side of the callout.
    YelpAnnotation *annotation = view.annotation;
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    [imageView setImageWithURL:[NSURL URLWithString:annotation.dataModel.imageUrl]];
    view.leftCalloutAccessoryView = imageView;
}


@end

