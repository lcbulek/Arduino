#include <TextFinder.h>

TextFinder finder(Serial);

const int NUMBER_OF_FIELDS = 3; // how many comma-separated fields we expect
int fieldIndex = 0;             // the current field being received
int values[NUMBER_OF_FIELDS];   // array holding values for all the fields


void setup()
{
  Serial.begin(9600); // Initialize serial port to send and receive at 9600 baud
}

void loop()
{

  for(fieldIndex = 0; fieldIndex  < 3; fieldIndex ++)
  {
    values[fieldIndex] = finder.getValue(); // get a numeric value

  }
  Serial.print( fieldIndex);
  Serial.println(" fields received:");
  for(int i=0; i <  fieldIndex; i++)
  {
     Serial.println(values[i]);
  }
  fieldIndex = 0;  // ready to start over
}
      
    
