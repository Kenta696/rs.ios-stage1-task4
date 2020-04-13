#import "TelephoneFinder.h"

@implementation TelephoneFinder
- (NSArray <NSString*>*)findAllNumbersFromGivenNumber:(NSString*)number {
    NSRange range = NSMakeRange(0, number.length);
    NSRange search = [number rangeOfString:@"-" options:0 range:range];
    if (search.location!=NSNotFound) {
        return nil;
    } else {
        NSMutableArray* arrayNumber = [[NSMutableArray alloc]init];
        NSMutableArray* arrayWithResults = [[NSMutableArray alloc]init];
        NSMutableString* storedString = [NSMutableString stringWithString:number];
        for (int i=0; i<=number.length-1; i++) {
            NSString*str = [number substringWithRange:NSMakeRange(i, 1)];
            int a;
            NSScanner* scaner = [NSScanner scannerWithString:str];
            [scaner scanInt:&a];
            NSNumber* number = [NSNumber numberWithInt:a];
            [arrayNumber addObject:number];
        }
        for (NSInteger i =0; i<= [arrayNumber count]-1; i++) {
            if ([[arrayNumber objectAtIndex:i]integerValue]==1) {
                NSString*str = [NSString stringWithFormat:@"2"];
                [storedString replaceCharactersInRange:NSMakeRange(i, 1) withString:str];
                NSString* string =[NSString stringWithString:storedString];
                [arrayWithResults addObject:string];
                NSString*str1 = [NSString stringWithFormat:@"4"];
                [storedString replaceCharactersInRange:NSMakeRange(i, 1) withString:str1];
                NSString* string1 =[NSString stringWithString:storedString];
                [arrayWithResults addObject:string1];
                [storedString replaceCharactersInRange:NSMakeRange(i, 1) withString:@"1"];
            }else if ([[arrayNumber objectAtIndex:i]integerValue]==2){
                NSString*str = [NSString stringWithFormat:@"1"];
                [storedString replaceCharactersInRange:NSMakeRange(i, 1) withString:str];
                NSString* string =[NSString stringWithString:storedString];
                [arrayWithResults addObject:string];
                NSString*str1 = [NSString stringWithFormat:@"3"];
                [storedString replaceCharactersInRange:NSMakeRange(i, 1) withString:str1];
                NSString* string1 =[NSString stringWithString:storedString];
                [arrayWithResults addObject:string1];
                NSString*str2 = [NSString stringWithFormat:@"5"];
                [storedString replaceCharactersInRange:NSMakeRange(i, 1) withString:str2];
                NSString* string2 =[NSString stringWithString:storedString];
                [arrayWithResults addObject:string2];
                [storedString replaceCharactersInRange:NSMakeRange(i, 1) withString:@"2"];
            }       if ([[arrayNumber objectAtIndex:i]integerValue]==3 ){
                NSString*str = [NSString stringWithFormat:@"2"];
                [storedString replaceCharactersInRange:NSMakeRange(i, 1) withString:str];
                NSString* string =[NSString stringWithString:storedString];
                [arrayWithResults addObject:string];
                NSString*str1 = [NSString stringWithFormat:@"6"];
                [storedString replaceCharactersInRange:NSMakeRange(i, 1) withString:str1];
                NSString* string1 =[NSString stringWithString:storedString];
                [arrayWithResults addObject:string1];
                [storedString replaceCharactersInRange:NSMakeRange(i, 1) withString:@"3"];
            }else if ([[arrayNumber objectAtIndex:i]integerValue]==4){
                NSString*str = [NSString stringWithFormat:@"1"];
                [storedString replaceCharactersInRange:NSMakeRange(i, 1) withString:str];
                NSString* string =[NSString stringWithString:storedString];
                [arrayWithResults addObject:string];
                NSString*str1 = [NSString stringWithFormat:@"5"];
                [storedString replaceCharactersInRange:NSMakeRange(i, 1) withString:str1];
                NSString* string1 =[NSString stringWithString:storedString];
                [arrayWithResults addObject:string1];
                NSString*str2 = [NSString stringWithFormat:@"7"];
                [storedString replaceCharactersInRange:NSMakeRange(i, 1) withString:str2];
                NSString* string2 =[NSString stringWithString:storedString];
                [arrayWithResults addObject:string2];
                [storedString replaceCharactersInRange:NSMakeRange(i, 1) withString:@"4"];
            }if ([[arrayNumber objectAtIndex:i]integerValue]==5) {
                NSString*str = [NSString stringWithFormat:@"2"];
                [storedString replaceCharactersInRange:NSMakeRange(i, 1) withString:str];
                NSString* string =[NSString stringWithString:storedString];
                [arrayWithResults addObject:string];
                NSString*str1 = [NSString stringWithFormat:@"4"];
                [storedString replaceCharactersInRange:NSMakeRange(i, 1) withString:str1];
                NSString* string1 =[NSString stringWithString:storedString];
                [arrayWithResults addObject:string1];
                NSString*str2 = [NSString stringWithFormat:@"6"];
                [storedString replaceCharactersInRange:NSMakeRange(i, 1) withString:str2];
                NSString* string2 =[NSString stringWithString:storedString];
                [arrayWithResults addObject:string2];
                NSString*str3 = [NSString stringWithFormat:@"8"];
                [storedString replaceCharactersInRange:NSMakeRange(i, 1) withString:str3];
                NSString* string3 =[NSString stringWithString:storedString];
                [arrayWithResults addObject:string3];
                [storedString replaceCharactersInRange:NSMakeRange(i, 1) withString:@"5"];
            }else if ([[arrayNumber objectAtIndex:i]integerValue]==6 ){
                NSString*str = [NSString stringWithFormat:@"3"];
                [storedString replaceCharactersInRange:NSMakeRange(i, 1) withString:str];
                NSString* string =[NSString stringWithString:storedString];
                [arrayWithResults addObject:string];
                NSString*str1 = [NSString stringWithFormat:@"5"];
                [storedString replaceCharactersInRange:NSMakeRange(i, 1) withString:str1];
                NSString* string1 =[NSString stringWithString:storedString];
                [arrayWithResults addObject:string1];
                NSString*str2 = [NSString stringWithFormat:@"9"];
                [storedString replaceCharactersInRange:NSMakeRange(i, 1) withString:str2];
                NSString* string2 =[NSString stringWithString:storedString];
                [arrayWithResults addObject:string2];
                [storedString replaceCharactersInRange:NSMakeRange(i, 1) withString:@"6"];
            }if ([[arrayNumber objectAtIndex:i]integerValue]==7) {
                NSString*str = [NSString stringWithFormat:@"4"];
                [storedString replaceCharactersInRange:NSMakeRange(i, 1) withString:str];
                NSString* string =[NSString stringWithString:storedString];
                [arrayWithResults addObject:string];
                NSString*str1 = [NSString stringWithFormat:@"8"];
                [storedString replaceCharactersInRange:NSMakeRange(i, 1) withString:str1];
                NSString* string1 =[NSString stringWithString:storedString];
                [arrayWithResults addObject:string1];
                [storedString replaceCharactersInRange:NSMakeRange(i, 1) withString:@"7"];
            }else if ([[arrayNumber objectAtIndex:i]integerValue]==8 ){
                NSString*str = [NSString stringWithFormat:@"5"];
                [storedString replaceCharactersInRange:NSMakeRange(i, 1) withString:str];
                NSString* string =[NSString stringWithString:storedString];
                [arrayWithResults addObject:string];
                NSString*str1 = [NSString stringWithFormat:@"7"];
                [storedString replaceCharactersInRange:NSMakeRange(i, 1) withString:str1];
                NSString* string1 = [NSString stringWithString:storedString];
                [arrayWithResults addObject:string1];
                NSString*str2 = [NSString stringWithFormat:@"9"];
                [storedString replaceCharactersInRange:NSMakeRange(i, 1) withString:str2];
                NSString* string2 = [NSString stringWithString:storedString];
                [arrayWithResults addObject:string2];
                NSString*str3 = [NSString stringWithFormat:@"0"];
                [storedString replaceCharactersInRange:NSMakeRange(i, 1) withString:str3];
                NSString* string3 = [NSString stringWithString:storedString];
                [arrayWithResults addObject:string3];
                [storedString replaceCharactersInRange:NSMakeRange(i, 1) withString:@"8"];
            }if ([[arrayNumber objectAtIndex:i]integerValue]==9 ) {
                NSString*str = [NSString stringWithFormat:@"6"];
                [storedString replaceCharactersInRange:NSMakeRange(i, 1) withString:str];
                NSString* string =[NSString stringWithString:storedString];
                [arrayWithResults addObject:string];
                NSString*str1 = [NSString stringWithFormat:@"8"];
                [storedString replaceCharactersInRange:NSMakeRange(i, 1) withString:str1];
                NSString* string1 =[NSString stringWithString:storedString];
                [arrayWithResults addObject:string1];
                [storedString replaceCharactersInRange:NSMakeRange(i, 1) withString:@"9"];
            }else if ([[arrayNumber objectAtIndex:i]integerValue]==0 ){
                NSString*str = [NSString stringWithFormat:@"8"];
                [storedString replaceCharactersInRange:NSMakeRange(i, 1) withString:str];
                NSString* string =[NSString stringWithString:storedString];
                [arrayWithResults addObject:string];
                [storedString replaceCharactersInRange:NSMakeRange(i, 1) withString:@"0"];
            }
            
        }
        
        NSArray* results= [NSArray arrayWithArray:arrayWithResults];
        NSLog(@"%@",arrayWithResults);
        return results;
    }
}
@end

