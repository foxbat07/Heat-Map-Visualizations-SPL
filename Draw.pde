void draw()
{
  if(gnColorMode==1)
     { a=1;
       b=0;
       c=0;
       alphaValue=255;
     
     colorMode(RGB,255,255,255,alphaValue);
     }
  if(gnColorMode==2)
    {  a=0.85;
       b=1;
       c=1;
       alphaValue=255;     
     colorMode(HSB,255,255,255,alphaValue); 
    }
  if(gnColorMode==3)
     { a=1;
       b=1;
       c=1;
       alphaValue=255; 
     colorMode(RGB,255,255,255,alphaValue);    
     }
   if(gnColorMode==4)
     { 
     colorMode(RGB,255,255,255,alphaValue);
     a=0;
     b=1;
     c=1;  
     }  
   if(gnColorMode==5)
     { 
     colorMode(RGB,192,255,255,alphaValue);
     a=1;
     b=0;
     c=0;  
     alphaValue=255;
     }    
  
//colormapping
 for (i=0;i<rows;i++)
      {
        for (j=0;j<columns; j++)
             {
              if(i%3==0)
                colorMatrix[i][j]= map(dataMatrix[i][j],0,maxBooks,0,255);
              if(i%3==1)
                colorMatrix[i][j]= map(dataMatrix[i][j],0,maxCassettes,0,255);
              if(i%3==2)
                colorMatrix[i][j]= map(dataMatrix[i][j],0,maxDVDs,0,255);           
             }
      }  
  //visualize
  
  for (i=0;i<rows;i++)
      { 
        count=i/3;
        for (j=0;j<columns; j++)
             {   
               
             noStroke();
            
             if(i%3==0)
              fill(colorMatrix[i][j]*a,colorMatrix[i][j]*b,colorMatrix[i][j]*c,alphaValue);
            if(i%3==1)
              fill(colorMatrix[i][j]*b,colorMatrix[i][j]*c,colorMatrix[i][j]*a,alphaValue);
            if(i%3==2)
              fill(colorMatrix[i][j]*c,colorMatrix[i][j]*a,colorMatrix[i][j]*b,alphaValue); 
                                                                    
               /////different shapes          
               {  
               float show= random(1);
               if (show>0.9)
                   rect(barXposition+ j*barWidth,barYposition+i*barHeight+count*barHeight,barWidth,barHeight);
                                 
                /*
                //stroke(0);
                beginShape();               
                  vertex(barXposition+ j*barWidth,barYposition+i*barHeight+count*barHeight);
                  vertex(barXposition+ j*barWidth+barWidth,barYposition+i*barHeight+count*barHeight);    
                  vertex(barXposition+ j*barWidth+3*barWidth,barYposition+i*barHeight+count*barHeight+barHeight/2);
                  
                  vertex(barXposition+ j*barWidth+barWidth,barYposition+i*barHeight+count*barHeight+barHeight);
                  vertex(barXposition+ j*barWidth,barYposition+i*barHeight+count*barHeight+barHeight);
                  vertex(barXposition+ j*barWidth+barWidth,barYposition+i*barHeight+count*barHeight+barHeight/2);
                  
                endShape(CLOSE);
                //line(barXposition+ j*barWidth+2*barWidth,barYposition+i*barHeight+count*barHeight,barXposition+ j*barWidth,barYposition+i*barHeight+count*barHeight+barHeight);
                */
                //ellipse (barXposition+ j*barWidth,barYposition+i*barHeight+count*barHeight,10,10 );
               }  
             }
      }
     
//  fill(255,0,0);    
//  rect(10,10,10,10);
 
/*      
textFont(myTimes);
fill(0);
text(maxBooks,width/2,height/2);
text(maxCassettes,width/2,height/2+40);
text(maxDVDs,width/2,height/2+80);
*/
//save("checkingouteurope.tif");
//if (millis()%100==0)
//   saveFrame("image-####.gif");
saveFrame("europe/#####.tif");
}
