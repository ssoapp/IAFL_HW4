//Value of a = height of handle
//Value of b = width of comb
//Value of c = length of teeth

a = 80;
b = 80;
c = 45;

module handle()
{
	translate([0, a, 0])
	cylinder(h=6,r=15,$fn=100, center=true);

	translate([-15,0, -3])
	resize([30, a, 6])
	cube(30, 30, 6);
}//end module handle

handle();

module base()
{
	translate([-b/2, -13, -3])
	resize([b, 15, 6])
	cube(1, 1, 1);
}//end base

base();

for ( i = [0 : (b/2)-1] )
{
   
    translate([(i+i)-b/2, -c, -3])
	 resize([1, c, 6])
    cube(2, 2, 2);
}