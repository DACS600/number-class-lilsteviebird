#import "NumberProps.h"

@implementation NumberProps

-(id) init
{
  self = [super init];
  if(self){
    numberGiven = 1;
    isEven = false;
    isPrime = true;
    sumOfDigits = 1;
    numberOfDigits = 1;
    isPerfectSquare = 1;
    nearestPerfectSquare = 1;
  }
  return self;
}


-(void) print {

  printf("\nYour number is %i \n", numberGiven);


}

-(int) setNumberGiven: (int) g{
  numberGiven = g;

  return numberGiven;
}

-(bool) isEven: (int) g{
  if( g % 2 == 0 ){
    printf("\nYour number is even! \n");
  }else{
    printf("\nYour number is odd \n");
  }
}

-(bool) isPrime: (int) g{
  int count = 0;
  if(g == 1){
    printf("\nYour number is prime \n");
    return YES;

  }else{
    for(int i = 1; i <= g; i++){
      if(g % i == 0){
        count++;
      }
    }
    if(count == 2){
      printf("\nYour number is prime \n");
      return true;
    }else{
      printf("\nYour number is not prime \n");
      return false;
    }

  }

}

-(void) isPerfectSquare: (int) g{
  bool perfectSquare = false;
  if(g < 0){
    printf("\nYour nearest perfect square is 1 \n");
  }
  for(int i = 1; i <= g; i++){
    int x = 0;
    x = i * i;
    if(x == g){
      perfectSquare = true;
    }
  }

  if(perfectSquare == false){
    printf("\nYour number is not a perfect square \n");
  } else{
    printf("\nYour number is a perfect square \n");
  }

}

-(void) numOfDigits: (int) g{
  int counter = 0;
  while(g > 0){
    g = g/10;
    counter++;

  }

  printf("\nThe number of digits is %i \n", counter);
}

-(void) sumOfDigits: (int) g{
  int sumOfDigs = 0;
  if(g < 0){
    g = g * -1;
  }
  if(g == 0){
    printf("\nYour sum of digits is 0 \n");
  }
  while(g > 0){
    int digitAdded = g%10;
    sumOfDigs = digitAdded + sumOfDigs;
    g = g/10;

  }

  printf("\nThe sum of digits is %i \n", sumOfDigs);
}

-(void) largestDigits: (int) g{
  int tempKing = 0;
  if(g < 0){
    g = g * -1;
  }
  if(g == 0){
    printf("\nYour largest digit is 0 \n");
  }
  while(g > 0){
    int digitInQuestion = g%10;
    if(digitInQuestion > tempKing){
      tempKing = digitInQuestion;
    }
    g = g/10;

  }

  printf("\nThe largest digit is %i \n", tempKing);
}

-(void) nearestPerfectSquare: (int) g{
  int tempNearKing;
  int comparedSquare;
  int finalKing;
  if( g == 1 || g <= 0){
    printf("\nThe closest square you is 1 \n");
  }
  for(int i = 0; i < g; i++){
    int firstSquare = i * i;

    if(firstSquare < g){
      comparedSquare = g - firstSquare;
    }else if(firstSquare > g){
      comparedSquare = firstSquare - g;
    }

    if(comparedSquare < tempNearKing){
      finalKing = firstSquare;
    }

    tempNearKing = comparedSquare;

  }
  printf("\nThe closest square is %i \n", finalKing);
}



@end
