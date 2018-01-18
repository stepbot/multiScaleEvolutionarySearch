float problemValue(int problem, float x, float y){
  float functionValue = -1e33;
  switch(problem){
    // stepbots peaks
    case 0:
      functionValue = (pow(cos(8*(x-2))*cos(8*(y)),1)-(abs(x-2)+abs(y)));
    // Schwefel function
    case 1:
      functionValue = (418.9829*(2))-((x*sin(sqrt(abs(x))))+(y*sin(sqrt(abs(y)))));
    // Rastrigin function
    case 2:
      functionValue = (418.9829*(2))-((x*sin(sqrt(abs(x))))+(y*sin(sqrt(abs(y)))));
    // Michalewicz function
    case 3:
      functionValue = (sin(x)*pow((sin((1*pow(x,2))/PI)),2*(10)))+(sin(y)*pow((sin((2*pow(y,2))/PI)),2*(10)));  
  }
  return functionValue;
  
}