//
//  AMapNaviCompositeUserConfig.h
//  AMapNaviKit
//
//  Created by eidan on 2017/6/23.
//  Copyright © 2017年 Amap. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AMapNaviCommonObj.h"

///导航SDK综合管理的配置类 since 5.2.0
@interface AMapNaviCompositeUserConfig : NSObject

/**
 * @brief 设置起点、终点、途径点（最多支持三个途径点）来调起路线规划页面,自动完成算路. 如果不设置起点,默认使用的是“我的位置”.
 * @param type POI点的起终点类型,参考 AMapNaviRoutePlanPOIType .
 * @param locationPoint POI点的经纬度坐标,必填. SDK会使用该坐标点进行路径规划,参考 AMapNaviPoint .
 * @param name POI点的名字,选填. SDK会将该名字显示在搜索栏内. 如果不传将使用默认值,如“终点”、“途径点1”.
 * @param mid POI点的高德唯一标识ID,选填. 如果传入，SDK将会优先使用此ID对应的POI点的经纬度坐标、名字等信息进行算路和展示.
 * @return 是否设置成功
 */
- (BOOL)setRoutePlanPOIType:(AMapNaviRoutePlanPOIType)type location:(AMapNaviPoint *_Nonnull)locationPoint name:(NSString *_Nullable)name POIId:(NSString *_Nullable)mid;

@end
