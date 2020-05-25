syms a2 a5 a8 w0
z2=[-2;4];
z5=[-1;1];
z8=[2;4];
y2=1;
y5=-1;
y8=-1;
w=a2*z2*y2+a5*z5*y5+a8*z8*y8;
wt=transpose(w);
eq2=y2*(wt*z2+w0)
eq5=y5*(wt*z5+w0)
eq8=y8*(wt*z8+w0)
