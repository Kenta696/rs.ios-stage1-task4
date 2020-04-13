#import "ArrayCalculator.h"

@implementation ArrayCalculator
+ (NSInteger)maxProductOf:(NSInteger)numberOfItems itemsFromArray:(NSArray *)array {
        int value = 1;
        if ([array containsObject:@"1"]){
            NSInteger value =0;
            return value;
        }if ([array count]<numberOfItems) {
                NSInteger maxProduct = [[array firstObject]integerValue]*[[array objectAtIndex:1]integerValue]*[[array lastObject]integerValue];
                return maxProduct;
            }
        else{
            NSArray* sortedArray = [array sortedArrayUsingSelector:@selector(compare:)];
            NSMutableArray* arrayWithoutNegativeNumber = [NSMutableArray arrayWithArray:sortedArray];
            NSMutableArray* arrayWithNegativeNumber = [[NSMutableArray alloc]init];
            for (NSInteger i=0; i<=[arrayWithoutNegativeNumber count]-1; i++) {
                if ([[arrayWithoutNegativeNumber objectAtIndex:i]intValue]<0) {
                    NSNumber* number = [arrayWithoutNegativeNumber objectAtIndex:i];
                    [arrayWithNegativeNumber addObject:number];
                    [arrayWithoutNegativeNumber removeObjectAtIndex:i];
                }}
            NSArray* sortedArrayWithNegativeNumber = [arrayWithNegativeNumber sortedArrayUsingSelector:@selector(compare:)];
            NSArray* newArray = [NSArray arrayWithArray:arrayWithoutNegativeNumber];
            newArray = [[newArray reverseObjectEnumerator]allObjects];
            
            if ([newArray count]>=numberOfItems) {
                for (int i =0;i<= numberOfItems-1; i++) {
                    int number = [[newArray objectAtIndex:i]intValue];
                    value = value*number;
                }
            }else if ([newArray count]<=numberOfItems){
                int remain = numberOfItems-[newArray count];
                for (int i =0; i<=[newArray count]-1; i++) {
                    value = value* [[newArray objectAtIndex:i]intValue];
                }
                for (int i =0; i<= remain; i++) {
                    value = value* [[sortedArrayWithNegativeNumber objectAtIndex:i]intValue];
                }
                
            }
        }
        return value ;
    }
    @end

