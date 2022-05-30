 

/**
 * Configurações iniciais sobre os sensores
 * DHT11, LM35, LDR5 e TCRT5000
 */
 

int lm35_pin = A0, leitura_lm35 = 0;
float temperatura;

int switch_pin = 7;

void setup() 
{
  Serial.begin(9600);
  
  pinMode(switch_pin, INPUT);
}
 
void loop() 
{
  /**
  
   * Bloco do LM35
   */
  leitura_lm35 = analogRead(lm35_pin);
  temperatura = leitura_lm35 * (5.0/1023) * 100;
  Serial.print(temperatura);
  Serial.print(";");

  if(digitalRead(switch_pin) == LOW){
    Serial.println(1);
  }
  else {
    Serial.println(0);
  }
 delay(2000);
}
