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
       
        printf("input a string: ");
        fgets(inputChars, 255, stdin); //places limit 255 characters
        
        printf("your string is %s\n",inputChars);
        
        //convert char array to NSString object
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        
        //print NSString object
        NSLog(@"Input was: %@", inputString);
    
    return 0;
    }
}
}
