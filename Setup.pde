void setup()
{
  size(1440,900);  //display(width,height)  
  //smooth();
  background(01);  // black
  
  myHelvetica = createFont("Helvetica",24);
  myTimes = createFont("Times",12,true);
  myArial = createFont ("Arial",18,true);
 
  ////////////////title////////////// 
  textFont(myHelvetica);
  textAlign(LEFT,LEFT);
  fill(255,255,255,110);
  text("What's your second language Seattle?",30,30);
  //////////color coding/////////////
  textFont(myHelvetica);
  textAlign(LEFT,LEFT);
  fill(255,0,0);
  text("Books ",width-100,30);
  
  textFont(myHelvetica);
  textAlign(LEFT,LEFT);
  fill(0,0,255);
  text("Cassettes ",width-222,30);
  
  textFont(myHelvetica);
  textAlign(LEFT,LEFT);
  fill(0,255,0);
  text("DVDs ",width-300,30);
       
  ///////////////credits//////////////////
  textFont(myArial);
  textAlign(LEFT,LEFT);
  fill(255,255,255,100);
  text("by Mohit Hingorani || Project 2 || MAT 259 Winter 2014 ",width-450,height-20);
  
  textFont(myArial);
  textAlign(LEFT,LEFT);
  fill(255,255,255,100);
  text("Data from the Seattle Public Library     ( Press 1-5) ",30,height-20);
  ///////////////colorMode////////////////
  
   
  ////////////2006-2013///////////////////
  
  
 int yearCount=0;
  while(yearCount<8)
        {
         textFont(myArial);
         textAlign(CENTER,CENTER);
         fill(255,255,255,100);
         text(2006+yearCount,(barWidth*4+(barXposition)+(barWidth*12)*yearCount),height-60);
         yearCount++;
        }
        
 
//german french italian spanish
  
  textFont (myArial);
  textAlign( LEFT, LEFT);
  fill( 255,255,255,100);
  text("German",textWidthDifference,160);
  text("French",textWidthDifference,160+ textHeightDifference);
  text("Italian",textWidthDifference,160+2*textHeightDifference);
  text("Spanish",textWidthDifference,160+3*textHeightDifference);
  
  
  //the data imported is in the from of 5 columns: month,year,books,cassettes,DVDs
  //the charts will be based on monthly transaction over a period of 7 years for different categories
  //creating tables
  table420= new Table();
  table430= new Table();
  table440= new Table();
  table450= new Table();
  table460= new Table();
  
  //loading tables
  table420= loadTable("query_420.csv","header");
  table430= loadTable("query_430.csv","header");
  table440= loadTable("query_440.csv","header"); 
  table450= loadTable("query_450.csv","header");
  table460= loadTable("query_460.csv","header");
  
  //creating the datamatrix
  dataMatrix = new int [rows][columns];
  //creating color Matrix
  colorMatrix = new float [rows][columns];
  
  //extractin table values 
  for (i=0;i<rows;i+=3)
      {
        for (j=0;j<columns;j++)
            {
               if(i>=0 && i<3)
                 {
                   dataMatrix[i+0][j]= table430.getInt(j,2);
                   dataMatrix[i+1][j]= table430.getInt(j,3);
                   dataMatrix[i+2][j]= table430.getInt(j,4);
                 }
               if(i>=3 && i<6)
                 {
                   dataMatrix[i+0][j]= table440.getInt(j,2);
                   dataMatrix[i+1][j]= table440.getInt(j,3);
                   dataMatrix[i+2][j]= table440.getInt(j,4);
                 }
                if(i>=6 && i<9)
                 {
                   dataMatrix[i+0][j]= table450.getInt(j,2);
                   dataMatrix[i+1][j]= table450.getInt(j,3);
                   dataMatrix[i+2][j]= table450.getInt(j,4);
                 } 
                 if(i>=9 && i<12)
                 {
                   dataMatrix[i+0][j]= table460.getInt(j,2);
                   dataMatrix[i+1][j]= table460.getInt(j,3);
                   dataMatrix[i+2][j]= table460.getInt(j,4);
                 } 
            }
      }
      
      
maxBooks=dataMatrix[0][0];
for(i=0;i<rows;i+=3)
    {
      for(j=0;j<columns;j++)
          {
          if (maxBooks<dataMatrix[i][j])
              {
                maxBooks=dataMatrix[i][j];
              }
          }
    }
maxCassettes=dataMatrix[1][0];
for(i=1;i<rows;i+=3)
    {
      for(j=0;j<columns;j++)
          {
          if (maxCassettes<dataMatrix[i][j])
              {
                maxCassettes=dataMatrix[i][j];
              }
          }
    }
maxDVDs=dataMatrix[2][0];
for(i=2;i<rows;i+=3)
    {
      for(j=0;j<columns;j++)
          {
          if (maxDVDs<dataMatrix[i][j])
              {
                maxDVDs=dataMatrix[i][j];
              }
          }
    }
                                
              

}
