#include <stdio.h>
#include <string.h>
#define ROMAN_NUMERAL "III"

int
romanToInt (char*);

int
main (void) {

  printf("%s = %d\n",ROMAN_NUMERAL,romanToInt(ROMAN_NUMERAL));

  return 0;

}

int
romanToInt(char* s) {

  int ret_val = 0;
  int i = 0;

  while (i<strlen(s)) {

    switch (s[i]) {

      case 'I':
        if(s[i+1] == 'V'){
          ret_val += 4;
          i+=1;
        }
        else if (s[i+1] == 'X'){
          ret_val += 9;
          i+=1;
        }
        else {
          ret_val+=1;
        }
        break;

      default:
          /* not handling this since leetcode guarantees one of the above cases will hold */
    }
    i++;
  }

   return 0;
}
    /*
    when 'V'
      ret_val += 5
    when 'X'
      if s[i+1] == 'L'
        ret_val += 40
        i+=1
      elsif s[i+1] == 'C'
        ret_val += 90
        i+=1
      else
        ret_val += 10
      end
    when 'L'
      ret_val += 50
    when 'C'
      if s[i+1] == 'D'
        ret_val += 400
        i+=1
      elsif s[i+1] == 'M'
        ret_val += 900
        i+=1
      else
        ret_val += 100
      end
    when 'D'
      ret_val += 500
    when 'M'
      ret_val += 1000
    else

    end
    i+=1
  end
*/


