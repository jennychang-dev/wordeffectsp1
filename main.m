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
            NSLog(@"Input a number from 1-6");
            fgets(inputNum, 255, stdin);
            NSString *inputString = [NSString stringWithUTF8String:inputNum];
            NSNumber *integer = @([inputString intValue]);
       
        NSLog(@"input a string:");
        fgets(inputChars, 255, stdin); //places limit 255 characters
            NSString *scannedChar = [NSString stringWithUTF8String:inputChars];
            
        //convert char array to NSString object
        
        //print NSString object
        //NSLog(@"Input was: %@", inputString);
            
            if ([integer isEqual: @1]) {
                NSString *uppercase = [scannedChar uppercaseString];
                NSLog(@"uppercase of string is: %@\n",uppercase);
                
            } else
            NSLog(@"go away!");
            
//    NSString *uppercase = [inputString uppercaseString];
//            NSLog(@"uppercase of string is: %@\n",uppercase);
//
//            NSString *lowercase = [inputString lowercaseString];
//            NSLog(@"lowercase of string is: %@\n",lowercase);
//
//            char *scannedNumber;
//            NSLog(@"input string to convert into number");
//            fgets(scannedNumber,255,stdin);
//            NSNumberFormatter *convert = [[NSNumberFormatter alloc] init];
//            NSNumber *numbaaa = [convert numberFromString:scannedNumber];
//            NSLog(@"new number is: %@\n",numbaaa);
            
            
    }
            return 0;
}
}

