/*******************************************************************************
**NOTE** This code was generated by a tool and will occasionally be
overwritten. We welcome comments and issues regarding this code; they will be
addressed in the generation tool. If you wish to submit pull requests, please
do so for the templates in that tool.

This code was generated by Vipr (https://github.com/microsoft/vipr) using
the T4TemplateWriter (https://github.com/msopentech/vipr-t4templatewriter).

Copyright (c) Microsoft Corporation. All Rights Reserved.
Licensed under the Apache License 2.0; see LICENSE in the source repository
root for authoritative license information.﻿
******************************************************************************/



#import "MSGraphServiceModels.h"
#import "core/MSOrcObjectizer.h"


/** Implementation for MSGraphServicePatternedRecurrence
 *
 */
@implementation MSGraphServicePatternedRecurrence


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 

        if(_$$$_$$$propertiesNamesMappings==nil) {
    
        _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"pattern", @"pattern", @"range", @"range", nil];
        
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#microsoft.graph.patternedRecurrence";

    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
        if(dic!=nil) {
		_pattern = (![dic objectForKey: @"pattern"] || [ [dic objectForKey: @"pattern"] isKindOfClass:[NSNull class]] )?_pattern:[[MSGraphServiceRecurrencePattern alloc] initWithDictionary: [dic objectForKey: @"pattern"]];
		_range = (![dic objectForKey: @"range"] || [ [dic objectForKey: @"range"] isKindOfClass:[NSNull class]] )?_range:[[MSGraphServiceRecurrenceRange alloc] initWithDictionary: [dic objectForKey: @"range"]];
    }
    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self.pattern toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"pattern"];}
	{id curVal = [self.range toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"range"];}
    [dic setValue: @"#microsoft.graph.patternedRecurrence" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.pattern;
    if([self.updatedValues containsObject:@"pattern"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"pattern"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"pattern"];
            }
        
            }}
	{id curVal = self.range;
    if([self.updatedValues containsObject:@"range"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"range"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"range"];
            }
        
            }}
    return dic;
}


/** Setter implementation for property pattern
 *
 */
- (void) setPattern: (MSGraphServiceRecurrencePattern *) value {
    _pattern = value;
    [self valueChangedFor:@"pattern"];
}
       
/** Setter implementation for property range
 *
 */
- (void) setRange: (MSGraphServiceRecurrenceRange *) value {
    _range = value;
    [self valueChangedFor:@"range"];
}
       

@end
