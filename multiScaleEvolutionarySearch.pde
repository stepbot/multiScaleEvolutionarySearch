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

float minMoved = 1e-6;
float moved = 1e33;

float searchX;
float searchY;

float maxValue = 0;
float minValue = 0;
float maxRange = 0;
float minRange = 0;

int iter = 0;
int iterations = 25;

float searchRange = (maxRange-minRange);
int agentCount = 1000;

int problem = 0;


void setup() {
  size(1080, 1080);
  agents = new agent[agentCount];
  
  minRange = minRange(problem);
  maxRange = maxRange(problem);
  searchRange = (maxRange-minRange)/2;
  
  searchX = random(minRange,maxRange);
  searchY = random(minRange,maxRange);
  
  analyzeProblemForPlotting(problem);
  
}

void draw(){
  if(problem<=3){
    if((moved>minMoved)&(iter<iterations)){
      if(improvement>improvementLimit){
        plotProblem(problem);
        createAgents(problem);
        plotAgents();
        plotSearchPoint();
        value = problemValue(problem,searchX,searchY);
        improvement = value-best;
        if(value>best){
          best=value;
        }
        for(int ii = 0; ii < agentCount; ii++){
          if(agents[ii].value>value){
            moved = pow(agents[ii].x-searchX,2)+pow(agents[ii].y-searchY,2);
            value = agents[ii].value;
            searchX = agents[ii].x;
            searchY = agents[ii].y;
          }
        }
        String s = "function: "+problemName(problem)+", iter: "+iter+", X: "+searchX+", Y: "+searchY+", reward: "+value+", improve: "+improvement+", distance moved: "+moved;
        textSize(20);
        text(s, 20, height-60,width-20,height-20);
        //saveFrame();
        iter++;
      }else{
        searchRange = searchRange/2;
        improvement = 1e33;
      }
    }else{
      problem++;
      iter = 0;
      
      maxValue = 0;
      minValue = 0;
      maxRange = 0;
      minRange = 0;
      
      best = -10e32;
      
      improvement = 1e33;
      
      moved = 1e33;
      
      minRange = minRange(problem);
      maxRange = maxRange(problem);
      searchRange = (maxRange-minRange)/2;
  
      searchX = random(minRange,maxRange);
      searchY = random(minRange,maxRange);
      
      analyzeProblemForPlotting(problem);
    }
  }  
}