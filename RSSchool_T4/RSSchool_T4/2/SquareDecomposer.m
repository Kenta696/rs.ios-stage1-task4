#import "SquareDecomposer.h"

@implementation SquareDecomposer
- (NSArray <NSNumber*>*)decomposeNumber:(NSNumber*)number {
    
    long long value = [number longLongValue] * [number longLongValue];
    
    NSNumber *sqrValue = [NSNumber numberWithLongLong:value];
    
    NSMutableArray *array = [self decomposer:number remain:sqrValue];
    
    return [array isEqual:nil] ? nil : [array subarrayWithRange:NSMakeRange(0, array.count - 1)];
}

- (NSMutableArray *)decomposer:(NSNumber *)number remain:(NSNumber *)remain {
    
    NSMutableArray *array = [NSMutableArray array];
    
    if ([remain longLongValue] == 0) {
        
        [array addObject:number];
        
        return array;
    }
    
    for (long long i = [number intValue] - 1; i > 0; i--) {
        
        if ([remain longLongValue] - i * i >= 0) {
            
            long long newRemain = [remain longLongValue] - i * i;
            
            NSMutableArray *result = [self decomposer:@(i) remain:@(newRemain)];
            
            if (result) {
                
                [result addObject:number];
                
                return result;
            }
        }
    }
    
    return nil;
}


@end


