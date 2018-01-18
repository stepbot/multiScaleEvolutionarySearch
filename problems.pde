String problemName(int problem){
  String problemName = "unknown";
  switch(problem){
    // stepbots peaks
    case 0:
      problemName = "stepbots peaks";
      break;
      
    // Schwefel function
    case 1:
      problemName = "Schwefel function";
      break;
      
    // Rastrigin function
    case 2:
      problemName = "Rastrigin function";
      break;
      
    // Michalewicz function
    case 3:
      problemName = "Michalewicz function";
      break;
  }
  return problemName;
  
}

float problemValue(int problem, float x, float y){
  float functionValue = -1e33;
  switch(problem){
    // stepbots peaks
    case 0:
      functionValue = (pow(cos(8*(x-2))*cos(8*(y)),1)-(abs(x-2)+abs(y)));
      break;
      
    // Schwefel function
    case 1:
      functionValue = (418.9829*(2))-((x*sin(sqrt(abs(x))))+(y*sin(sqrt(abs(y)))));
      break;
      
    // Rastrigin function
    case 2:
      functionValue = (418.9829*(2))-((x*sin(sqrt(abs(x))))+(y*sin(sqrt(abs(y)))));
      break;
      
    // Michalewicz function
    case 3:
      functionValue = (sin(x)*pow((sin((1*pow(x,2))/PI)),2*(10)))+(sin(y)*pow((sin((2*pow(y,2))/PI)),2*(10)));
      break;
  }
  return functionValue;
  
}

float minRange(int problem){
  float minRange = 0;
  switch(problem){
    // stepbots peaks
    case 0:
      minRange = -5;
      
    // Schwefel function
    case 1:
      minRange = -500;
      
    // Rastrigin function
    case 2:
      minRange = -5.14;
      
    // Michalewicz function
    case 3:
      minRange = 0;  
  }
  return minRange;
  
}

float maxRange(int problem){
  float maxRange = 0;
  switch(problem){
    // stepbots peaks
    case 0:
      maxRange = 5;
      break;
      
    // Schwefel function
    case 1:
      maxRange = 500;
      break;
      
    // Rastrigin function
    case 2:
      maxRange = 5.14;
      break;
      
    // Michalewicz function
    case 3:
      maxRange = PI;
      break;
  }
  return maxRange;
  
}