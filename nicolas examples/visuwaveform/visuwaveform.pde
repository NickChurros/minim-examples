import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

Minim minim;

void setup()
{
  size(600, 220);

  minim = new Minim(this);
 
Wavetable test =  Waves.RandomSquare(5);
//change RandomSquare into any Waves.Waveform to visualize it

float[]  a= test.getWaveform();

 background(0);
  stroke(255, 0, 0);
  line(0, height/2, width,height/2 );
 
 
  stroke(255);
  // draw the waveform
  for(int i = 0; i < a.length-1; i++)
  {
    float x1 = map(i, 0, a.length, 0, width);
    float x2 = map(i+1, 0, a.length, 0, width);
   
    line(x1, height/2 + a[i]*100, x2, height/2 + a[i+1]*100);
  
  }



}

void draw()
{


}
