public void setup()
{
size(800,800); 
fractal(200, true, 100); 
}

public void fractal( int rad, boolean roat, int pink){
  if(rad <= 50){
  }else{
  noStroke(); 
  if(pink>255){
    pink = 255;
  }
  fill(255,pink,pink);
   ellipse(400,400, 2*rad, 2*rad); 
  //if true rotate the fractal drawing 45 degrees 
  if(roat){
    ellipse((float)(400 + rad*Math.cos(PI/6)), (float)(400 + rad*Math.sin(PI/6)), (float) rad, (float) rad);
    ellipse((float)(400 + rad*Math.cos(PI/2)), (float)(400 + rad*Math.sin(PI/2)), (float) rad, (float) rad);
    ellipse((float)(400 + rad*Math.cos(5*PI/6)), (float)(400 + rad*Math.sin(5*PI/6)), (float) rad, (float) rad);
    ellipse((float)(400 + rad*Math.cos(7*PI/6)), (float)(400 + rad*Math.sin(7*PI/6)), (float) rad, (float) rad); 
    ellipse((float)(400 + rad*Math.cos(9*PI/6)), (float)(400 + rad*Math.sin(9*PI/6)), (float) rad, (float) rad); 
    ellipse((float)(400 + rad*Math.cos(11*PI/6)), (float)(400 + rad*Math.sin(11*PI/6)), (float) rad, (float) rad); 
    
  }else{
    ellipse((float)(400 + rad*Math.cos(0)), (float)(400 + rad*Math.sin(0)), (float) rad, (float) rad);
    ellipse((float)(400 + rad*Math.cos(PI/3)), (float)(400 + rad*Math.sin(PI/3)), (float) rad, (float) rad);
    ellipse((float)(400 + rad*Math.cos(2*PI/3)), (float)(400 + rad*Math.sin(2*PI/3)), (float) rad, (float) rad);
    ellipse((float)(400 + rad*Math.cos(PI)), (float)(400 + rad*Math.sin(PI)), (float) rad, (float) rad); 
    ellipse((float)(400 + rad*Math.cos(4*PI/3)), (float)(400 + rad*Math.sin(4*PI/3)), (float) rad, (float) rad); 
    ellipse((float)(400 + rad*Math.cos(5*PI/3)), (float)(400 + rad*Math.sin(5*PI/3)), (float) rad, (float) rad); 
  }
fractal(rad-20, !roat, pink+20); 
  }
}

