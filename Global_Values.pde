//i am not yet sure how the sql-> processing workflow works.
//as on 2 feb 2014
PFont  myHelvetica = null;
PFont  myTimes = null;
PFont  myArial = null;
int rows= 12;
int columns=96;
int i,j;
int [][] dataMatrix =null;
float [][] colorMatrix = null;
int xloc,yloc;

//importing the text files :/                  
String[] deweyClass = { "430-439", "440-449","450-459","460-469" };

int barXposition = 144;
int barYposition = 80;
int barWidth = 12;
int barHeight = 48;
int barXspace = 0;
int barYspace = 0;
int textHeightDifference=190;
int textWidthDifference=50;
Table table420,table430,table440,table450,table460;

int maxBooks,maxCassettes,maxDVDs;
int colorBooks,colorCassettes,colorDVDs;

int x,y;
int count=0;
int gnColorMode=1;
float a,b,c;
int alphaValue;

