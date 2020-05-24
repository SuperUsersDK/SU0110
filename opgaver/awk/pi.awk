function abs(a) {
	if (a>0) return a;
	return -a;
}

END {
	for (i=1; ; i++) {
		X=rand();
		Y=rand();
		if (sqrt(X*X+Y*Y)<1) {
			inside++;
		}
		if (i%1000000==0) { 
			pi=4*(inside/i);
			diff=abs(pi-3.14159265358979328462643383279502);
			prev=pi;
			printf "%20.19f\t%10.10f\n",4*(inside/i),diff; }
	}
} 

