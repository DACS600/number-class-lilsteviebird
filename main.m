//
//  main.m
//  Prog1
//
//  Created by sli19 on 9/9/18.
//  Copyright © 2018 sli19. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NumberProps.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    //insert code here
    printf("Your program is starting up :)");
    NumberProps *aNumber = [[NumberProps alloc] init];

    int x;
    int y;
    int count = 0;
    bool run = true;

    while(run){
      if(count == 0){
        printf("\nPlease enter a number: ");
        scanf("%i", &x);
      }
    printf("\n The answer to your question will displayed above this line of text!");
    printf("\nI'd like to .... \n 1.) See what my number is \n 2.) Is my number even? \n 3.) Is my number prime? \n 4.) Is my number a perfect square? \n 5.) How many digits does my number have? \n 6.) What is the sum of my number's digits? \n 7.) What is my number's largest digit? \n 8.) What is the closest perfect square number to my number? \n 9.) ALL THE ABOVE \n 10.) Enter a new number! \n11.) Quit");
    printf("\n Answer number choice here: ");
    scanf("%i", &y);
    printf("\n");

      if(y == 1){
        [aNumber setNumberGiven: x];
        [aNumber print];
        count++;

      }if(y == 2){
        printf("Your number is: %i \n Your answer is... \n", x);
        [aNumber isEven: x];
        count++;
      }if(y == 3){
        printf("Your number is: %i \n Your answer is... \n", x);
        [aNumber isPrime: x];
        count++;
      }if(y == 4){
        printf("Your number is: %i \n Your answer is... \n", x);
        [aNumber isPerfectSquare: x];
        count++;
      }if(y == 5){
        printf("Your number is: %i \n Your answer is... \n", x);
        [aNumber numOfDigits: x];
        count++;
      }if(y == 6){
        printf("Your number is: %i \n Your answer is... \n", x);
        [aNumber sumOfDigits: x];
        count++;
      }if(y == 7){
        printf("Your number is: %i \n Your answer is... \n", x);
        [aNumber largestDigits: x];
        count++;
      }if(y == 8){
        printf("Your number is: %i \n Your answer is... \n", x);
        [aNumber nearestPerfectSquare: x];
        count++;
      }if(y == 9){
        [aNumber setNumberGiven: x];
        [aNumber print];
        [aNumber isEven: x];
        [aNumber isPrime: x];
        [aNumber isPerfectSquare: x];
        [aNumber sumOfDigits: x];
        [aNumber numOfDigits: x];
        [aNumber largestDigits: x];
        [aNumber nearestPerfectSquare: x];
        count++;

      }if(y == 10){
        printf("\nPlease enter your new number to confirm: ");
        scanf("%i", &x);
        count++;
      }if(y == 11){
        printf("Thank you! Good bye! \n");
        run = false;
      }
    }
















    }
    return 0;
}
