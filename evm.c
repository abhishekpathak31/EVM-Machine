 // LCD module connections
sbit LCD_RS at RB4_bit;
sbit LCD_EN at RB5_bit;
sbit LCD_D4 at RB0_bit;
sbit LCD_D5 at RB1_bit;
sbit LCD_D6 at RB2_bit;
sbit LCD_D7 at RB3_bit;sbit LCD_RS_Direction at TRISB4_bit;
sbit LCD_EN_Direction at TRISB5_bit;
sbit LCD_D4_Direction at TRISB0_bit;
sbit LCD_D5_Direction at TRISB1_bit;
sbit LCD_D6_Direction at TRISB2_bit;
sbit LCD_D7_Direction at TRISB3_bit;
// End LCD module connections

      char txt[7],txt1[7],txt2[7],txt3[7];

void main() {
int a=0,b=0;
int c=0,d=0,e=0;
trisd=1;
portd=0;
trisc=0;
portc=0;

while(1)
{
    Lcd_Init(); // Initialize Lcd
   Lcd_Cmd(_LCD_CLEAR); // Clear display
    Lcd_Cmd(_LCD_CURSOR_OFF); // Cursor off
    Lcd_Out(1, 1,"Welcome to Voting"); // Write text in first row
    delay_ms(100);
     Lcd_Out(2, 1,"cast your vote"); // Write text in second row

while(portd==0)
{ // This loop use for pusing the system
}

if (portd==0b00100000)
{
e=1;
}
while (e==1)
{
Lcd_Cmd(_LCD_CLEAR); // Clear display
Lcd_Out(1,1,"1:C1 2:C2"); // Write text in first row
Lcd_Out(2,1,"3:C3 4:C4"); // Write text in second row
while(portd==0)
{
}
portc=0b00000001;
delay_ms(100);
portc=0b00000000;
  Lcd_Out(2,1,"voting");

if (portd==0b00000001)
{
a=a+1;
e=0;
}
if (portd==0b00000010)
{
b=b+1;
e=0;
}
if (portd==0b00000100)
{
c=c+1;
e=0;
}
if (portd==0b00001000)
{
d=d+1;
e=0;
}
if (portd==0b00010000)
{
Lcd_Cmd(_LCD_CLEAR);
inttostr(a, txt);
inttostr(b, txt1);
inttostr(c, txt2);
inttostr(d, txt3);
delay_ms(500);
Lcd_out(1,1,"1:"); // Write text in first row
Lcd_out(1,4,txt); // Write text in first row
Lcd_out(2,1,"3:"); // Write text in second row
Lcd_out(2,4,txt2); // Write text in second row
delay_ms(2000);
Lcd_out(1,1,"2:"); // Write text in first row
Lcd_out(1,4,txt1); // Write text in first row
Lcd_out(2,1,"4:"); // Write text in second row
Lcd_out(2,4,txt3); // Write text in second row
delay_ms(2000);
}

}
}
}
}