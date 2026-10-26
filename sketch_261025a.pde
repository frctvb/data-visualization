// Pie Chart: Monthly Snack Sales
// Final Visualization (ready to connect to live data later)
float[] salesData = {45, 30, 20, 15};
String[] labels = {"Chips", "Cookies", "Candy", "Popcorn"};
color[] colors = {#ff6b6b, #4ecdc4, #ffe66d, #95e1d3};
float centerX, centerY;
float pieRadius;

void setup() {
  size(600, 600);
  centerX = width / 2;
  centerY = height / 2;
  pieRadius = 200;
}

void draw() {
  background(255);
  float total = sumArray(salesData);
  float startAngle = 0;
  
  for (int i = 0; i < salesData.length; i++) {
    float sliceAngle = (salesData[i] / total) * TWO_PI;
    fill(colors[i]);
    noStroke();
    arc(centerX, centerY, pieRadius, pieRadius, startAngle, startAngle + sliceAngle);
    
    // Label outside slice
    fill(0);
    textAlign(LEFT, CENTER);
    text(labels[i], centerX + pieRadius + 20, centerY - 15*i);
    
    startAngle += sliceAngle;
  }
}

float sumArray(float[] arr) {
  float sumVal = 0;
  for (float num : arr) {
    sumVal += num;
  }
  return sumVal;
}
