void analyzeProblemForPlotting(int problem){
  for(int ii = 0; ii < width; ii++){
    for(int jj = 0; jj < height; jj++){
      x = map(ii,0,width,minRange,maxRange);
      y = map(jj,0,height,minRange,maxRange);
      value = problemValue(problem,x,y);
      if(value < minValue){
        minValue = value;
      }
      if(value > maxValue){
        maxValue = value;
      }
    }
  }
}