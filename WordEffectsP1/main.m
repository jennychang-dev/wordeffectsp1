//
//  main.m
//  WordEffectsP1
//
//  Created by Jenny Chang on 07/01/2019.
//  Copyright © 2019 Jenny Chang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        char inputChars[255];
        char inputNum[255];
        
        while(true) {
            NSLog(@"Input a number from 1-9");
            fgets(inputNum, 255, stdin);
            NSString *inputString = [NSString stringWithUTF8String:inputNum];
            NSNumber *integer = @([inputString intValue]);
       
        NSLog(@"input a string:");
        fgets(inputChars, 255, stdin); //places limit 255 characters
        NSString *scannedChar = [NSString stringWithUTF8String:inputChars];
            
            // if number is 1, then give case in upper case string
            if ([integer isEqual: @1]) {
                NSString *uppercase = [scannedChar uppercaseString];
                NSLog(@"uppercase of string is: %@\n",uppercase);
            
            // if number is 2, then give case in lower case string
            } else if ([integer isEqual:@2]) {
                NSString *lowercase = [scannedChar lowercaseString];
                NSLog(@"lowercase of string is: %@\n",lowercase);
            
            // if number is 3, convert string into number
            } else if ([integer isEqual:@3]) {
                
                NSNumber *convert = @([scannedChar intValue]);
                if ([convert isEqual:@"0"]) {
                    if ([scannedChar isEqual:@0]) {
                        NSLog(@"value is 0");
                    } else {
                        NSLog(@"unsuccessful");}
                    
                } else { NSLog(@"value is: %@",convert);
                        
                    }
                
            // add ", eh?" to the end of a string
            } else if ([integer isEqual:@4]) {
                NSString *newString = [scannedChar substringToIndex:[scannedChar length]-1];
                NSString *appendString = [newString stringByAppendingString:@",eh?"];
                NSLog(@"the resulting string is %@\n",appendString); //why does it print ,eh line below?
            
            // return "i don't know" for ? and "whoa calm down" for !
            } else if ([integer isEqual:@5]) {
                NSString *lastChar = [scannedChar substringToIndex:[scannedChar length]-1];
                NSString *lastLastChar = [lastChar substringFromIndex:[lastChar length]-1];

               if ([lastLastChar isEqual:@"?"]) {
                  NSLog(@"I don't know");
               }
               else if ([lastLastChar isEqual:@"!"]) {
                    NSLog(@"whoa, calm down!");
                }
            
            // replace space with -
            } else if ([integer isEqual:@6]) {
                NSString *replaceSpace = [scannedChar stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                NSLog(@"new string is: %@",replaceSpace);
            
            // letter count of string
            } else if ([integer isEqual:@7]) {
                unsigned long letterCount = [scannedChar length]-1;
                NSLog(@"letter count: %lu",letterCount);
            
            // punctuation removal
            } else if ([integer isEqual:@8]) {
                NSString *removePunctuation = [[scannedChar componentsSeparatedByCharactersInSet:[[NSCharacterSet letterCharacterSet] invertedSet]] componentsJoinedByString:@""];
                NSLog(@"string without punctuation: %@",removePunctuation);
                
            // replace every letter with an emoji
            } else if ([integer isEqual:@9]) {
                NSString *emojiTime = @"";
                for(int i=0; i < [scannedChar length]; i++) {
                    NSString *newString = [scannedChar substringWithRange:NSMakeRange(i, 1)];
                    
                    if ([[newString stringByTrimmingCharactersInSet:[NSCharacterSet letterCharacterSet]] isEqual:@""]) {
                        emojiTime = [emojiTime stringByAppendingString:@"🏀"];
                    } else {
                        emojiTime = [emojiTime stringByAppendingString:newString];
                        NSLog(@"replaced string: %@", emojiTime);
                        
                    }
                    
                    
                }
            }
            

        }
            return 0;
}
}
