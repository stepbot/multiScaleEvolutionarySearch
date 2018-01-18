color surfaceHeight = color(127);
color searchPointColor = color(255,0,0);
color agentColor = color(0,255,0);

agent[] agents;

float x;
float y;
float value;
float best = -10e32;
float improvement = 1e33;
float improvementLimit = 1e-10;

float minMoved = 1e-33;
float moved = 1e33;

float searchX;
float searchY;

float maxValue = 0;
float minValue = 0;
float maxRange = 0;
float minRange = 0;

int iter = 0;
int iterations = 100;

float searchRange = (maxRange-minRange);
int agentCount = 1000;

int problem = 0;


void setup() {
  size(640, 640);
  agents = new agent[agentCount];
  
}

void draw(){ 
  
}