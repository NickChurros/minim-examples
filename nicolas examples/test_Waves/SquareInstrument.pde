class SquareInstrument implements Instrument
{
  Oscil Osc;
  Gain  gain;
  AudioOutput out;
  
  SquareInstrument(float frequency, float amplitude, AudioOutput output)
  {
    out = output;
    Osc = new Oscil(frequency, amplitude,Waves.RandomNoise());
    /*
    replace RandomNoise() with :
    RandomSaw(5)
    RandomSquare(5)
    Sine
    Saw
    Square
    Triangle
    Saw(5)
    Square(5)
    Triangle(5)
    Pulse
    Pulse(0.4)
    Square(0.4) //same as pulse
    Saw(0.3)
    Triangle(0.3)    
    */
    gain = new Gain(0);
    Osc.patch(gain).patch(out);
  }
 
  void noteOn()
  {
    //println("Note on!");
    gain.setValue(1);
  }
  
  void noteOff()
  {
    //println("Note off!");
    gain.setValue(0);
  }
}
