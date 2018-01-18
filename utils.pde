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

void plotProblem(int problem){
  for(int ii = 0; ii < width; ii++){
    for(int jj = 0; jj < height; jj++){
      x = map(ii,0,width,minRange,maxRange);
      y = map(jj,0,height,minRange,maxRange);
      value = problemValue(problem,x,y);
      value = map(value,minValue,maxValue,0,255);
      surfaceHeight = color(int(value),int(value),int(value));
      set(ii,jj,surfaceHeight);
    }
  }
}

void createAgents(int problem){
  for(int ii = 0; ii < agentCount; ii++){
      x = constrain((randomGaussian() * searchRange) + searchX,minRange,maxRange);
      y = constrain((randomGaussian() * searchRange) + searchY,minRange,maxRange);
      value = problemValue(problem,x,y); 
      agents[ii] = new agent(x,y,int(map(x,minRange,maxRange,0,width)),int(map(y,minRange,maxRange,0,height)),value,agentColor);
    }
}