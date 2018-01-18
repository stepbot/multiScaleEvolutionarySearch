class agent{
  float x;
  float y;
  int screenX;
  int screenY;
  float value;
  color agentColor;
  
  agent(float xInput, float yInput, int inputScreenX, int inputScreenY, float valueInput, color colorInput){
    x = xInput;
    y = yInput;
    screenX = inputScreenX;
    screenY = inputScreenY;
    value = valueInput;
    agentColor = colorInput;
  }
  void display() {
   set(screenX,screenY,agentColor);
  }
}