int CheckCircle(float r1, float r2){
	if (sqrt((x2-x1)*(x2-x1)+(y2-y1)*(y2-y1))<=r1+r2){
		return 1;
	}else{
		return 2;
	}
}