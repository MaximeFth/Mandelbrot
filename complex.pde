class complex{
  float a;
  float b;
  float oa;
  float ob;
  public complex(float a, float b){
    this.a=a-1;
    this.b=b;
    this.oa=a-1;
    this.ob=b;
    
    
  }
  private float getModule(){
    return sqrt(this.a*this.a+this.b*this.b);
  }
  
  private void square(){
     float temp=this.a;
     this.a=this.a*this.a-this.b*this.b;

     this.b=2*temp*this.b;
  }
  
  private void printC(){
    System.out.println(this.a+" + "+this.b+"i");
  }
  private void update(){
    this.a+=this.oa;
    this.b+=this.ob;
  }

}