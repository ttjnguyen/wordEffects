//
//  main.m
//  wordEffects
//
//  Created by Jenny Nguyen on 2016-10-31.
//  Copyright © 2016 LightHouseLabs. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        while (TRUE) {
            
            // 255 unit long array of characters
            char inputChars[255];
            int number;
            
            // Operations list
            printf("1. Uppercase\n2. Lowercase\n3. Numberize\n4. Canadianize\n5. Respond\n6. De-Space-It\n\n");
            
            printf("Input a string: ");
            // limit input to max 255 characters
            fgets(inputChars, 255, stdin);
            
            printf("Choose an operation from 1 to 6: ");
            scanf("%d", &number);
            
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            
            NSString *uppercaseString = [inputString uppercaseString];
            
            NSString *lowerCaseString = [inputString lowercaseString];
            
            NSUInteger numberizeString = [inputString length];
            
            
            NSMutableString *mutableString = [NSMutableString stringWithString:inputString];
            [mutableString appendString:@", eh?"];
            
            // Operation 5
            // Switch Case below
            
            NSString *deSpaceIt = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
            
            
        
        switch (number) {
            case 1:
                NSLog(@"Input was: %@\n\n", uppercaseString);
                break;
            case 2:
                NSLog(@"Input was: %@\n\n", lowerCaseString);
                break;
            case 3:
                NSLog(@"Input has %lu characters\n\n", (unsigned long)numberizeString);
                break;
            case 4:
                NSLog(@"Input was: %@\n\n", mutableString);
                break;
            case 5:
                if ([inputString hasSuffix:@"?"]) {
                    NSLog(@"I don't know\n\n");
                } else if ([inputString hasSuffix:@"!"]) {
                    NSLog(@"Whoa, calm down!\n\n");
                } else {
                    NSLog(@"So?\n\n");
                }
                break;
            case 6:
                NSLog(@"Input was: %@\n\n", deSpaceIt);
                break;
                
            default:
                break;
        }
        
    }
    
}
return 0;
}


        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
   
