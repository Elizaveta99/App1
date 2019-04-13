//
//  main.m
//  lab6_task1
//
//  Created by Lizaveta Rudzko on 1/24/1398 AP.
//  Copyright © 1398 Lizaveta Rudzko. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n, m;
        NSLog(@"Enter n and m : ");
        scanf("%i %i", &n, &m);
        int input[n];
        NSLog(@"Enter input array with elements in range[1..1000] :\n");
        for (int i = 0; i < n; i++)
            scanf("%i", &input[i]); 
        for(int i = 0; i < n; i++)
        {
            int x = input[i], cnt = 0;
            while (x > 0)
            {
                x /= 10;
                cnt++;
            }
            if (cnt == 3)
            {
                if (input[i] % 2 != 0)
                     NSLog(@"%i / %i = %i\n", input[i], m, input[i] / m);
            }
        }
    }
    return 0;
}
