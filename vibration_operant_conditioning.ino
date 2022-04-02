// This script will run for 1 hours and have a randomized duration of disturbance and randomized duration of rest
int switchState = 0; // counts every 10 minutes + 1
long randNumber;
long trackNumber; // For tracking how much time to givev to rest each time
void setup() {
  // initialize digital pin LED_BUILTIN as an output.
  pinMode(13, OUTPUT);
  Serial.begin(9600);

  // if analog input pin 0 is unconnected, random analog
  // noise will cause the call to randomSeed() to generate
  // different seed numbers each time the sketch runs.
  // randomSeed() will then shuffle the random function.
  randomSeed(analogRead(0));
}

void loop() {
  if (switchState < 1 * 6 * 15 + 1){ // switchState 1 == 1 min; switchState 1 * 6 = 6 minutes; switchState 1 * 6 * 15 = 1 hour 30 min;
    switchState = switchState + 1;
    // 20 seconds
    randNumber = random(5, 20);;
    digitalWrite(13, HIGH);   // turn the LED on (HIGH is the voltage level)
    delay(1000*randNumber); // disturb for random number of seconds between 5 and 20.
    trackNumber = 20 - randNumber;;
    digitalWrite(13, LOW); 
    delay(1000*(trackNumber)); // wait for number of seconds that not rung
    // 40 seconds
    randNumber = random(5, 20);;
    digitalWrite(13, HIGH);   // turn the LED on (HIGH is the voltage level)
    delay(1000*randNumber); // disturb for random number of seconds between 5 and 20.
    trackNumber = 20 - randNumber;;
    digitalWrite(13, LOW); 
    delay(1000*(trackNumber)); // wait for number of seconds that not rung
    // 60 seconds
    randNumber = random(5, 20);;
    digitalWrite(13, HIGH);   // turn the LED on (HIGH is the voltage level)
    delay(1000*randNumber); // disturb for random number of seconds between 5 and 20.
    trackNumber = 20 - randNumber;;
    digitalWrite(13, LOW);
    delay(1000*(trackNumber)); // wait for number of seconds that not rung
  }
    else {
    digitalWrite(13, LOW);
  }
}
