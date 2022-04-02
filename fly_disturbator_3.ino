// This script will run for 6 hours and have a randomized duration of disturbance
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

// this will be on for 10 seconds and off for 10 seconds for two minutes; then 8 minutes off

void loop() {
    // comment this out later
    delay(1000*60UL * 206); // 
    digitalWrite(13, LOW); // when not the hours it does not work
    if (switchState < 1 * 6 * 12 + 1){ // switchState 1 == 10 min; switchState 1 * 6 = 1 hour; switchState 6 * 12 = 12 hours;
    switchState = switchState + 1;
    // 20 seconds
    randNumber = random(5, 20);;
    digitalWrite(13, HIGH);   // turn the LED on (HIGH is the voltage level)
    delay(1000*randNumber); // disturb for random number of seconds between 5 and 20.
    trackNumber = 20 - randNumber;;
    digitalWrite(13, LOW); // when not the hours it does not work
    delay(1000*(trackNumber)); // wait for number of seconds that not rung
    // 40 seconds
    randNumber = random(5, 20);;
    digitalWrite(13, HIGH);   // turn the LED on (HIGH is the voltage level)
    delay(1000*randNumber); // disturb for random number of seconds between 5 and 20.
    trackNumber = 20 - randNumber;;
    digitalWrite(13, LOW); // when not the hours it does not work
    delay(1000*(trackNumber)); // wait for number of seconds that not 
    // 60 seconds
    randNumber = random(5, 20);;
    digitalWrite(13, HIGH);   // turn the LED on (HIGH is the voltage level)
    delay(1000*randNumber); // disturb for random number of seconds between 5 and 20.
    trackNumber = 20 - randNumber;;
    digitalWrite(13, LOW); // when not the hours it does not work
    delay(1000*(trackNumber)); // wait for number of seconds that not 
    // 80 seconds
    randNumber = random(5, 20);;
    digitalWrite(13, HIGH);   // turn the LED on (HIGH is the voltage level)
    delay(1000*randNumber); // disturb for random number of seconds between 5 and 20.
    trackNumber = 20 - randNumber;;
    digitalWrite(13, LOW); // when not the hours it does not work
    delay(1000*(trackNumber)); // wait for number of seconds that not 
    // 100 seconds
    randNumber = random(5, 20);;
    digitalWrite(13, HIGH);   // turn the LED on (HIGH is the voltage level)
    delay(1000*randNumber); // disturb for random number of seconds between 5 and 20.
    trackNumber = 20 - randNumber;;
    digitalWrite(13, LOW); // when not the hours it does not work
    delay(1000*(trackNumber)); // wait for number of seconds that not 
    // 120 seconds
    randNumber = random(5, 20);;
    digitalWrite(13, HIGH);   // turn the LED on (HIGH is the voltage level)
    delay(1000*randNumber); // disturb for random number of seconds between 5 and 20.
    trackNumber = 20 - randNumber;;
    digitalWrite(13, LOW); // when not the hours it does not work
    delay(1000*(trackNumber)); // wait for number of seconds that not 
    delay(1000*60UL*8); // wait for 8 minutes
    }
    else {
    digitalWrite(13, LOW);
  }
}
