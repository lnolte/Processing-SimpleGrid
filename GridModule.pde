class GridModule {
  public float x, y, w, h;
  
  public static final int TOP_LEFT = 1;
  public static final int TOP_RIGHT = 2;
  public static final int BOTTOM_LEFT = 3;
  public static final int BOTTOM_RIGHT = 4;
  
  GridModule(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }
  
  PVector corner(int cornerCode) {
    if(cornerCode == GridModule.BOTTOM_RIGHT) {
      return new PVector(this.x + this.w, this.y + this.h); 
    }
    else if(cornerCode == GridModule.TOP_RIGHT) {
      return new PVector(this.x + this.w, this.y); 
    } 
    else if(cornerCode == GridModule.BOTTOM_LEFT) {
      return new PVector(this.x, this.y + this.h); 
    }
    else {
      // Default to the TOP_LEFT corner
      return new PVector(this.x, this.y);
    }
  }
}
