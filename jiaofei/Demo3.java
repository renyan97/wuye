import java.util.Scanner;
class Demo3
{
	public static void main(String [] args)
	{ 
		Scanner sin=new Scanner(System.in);
		Scanner sin0=new Scanner(System.in);
		double a=sin.nextDouble();
		double t0=sin0.nextDouble();
		double b=0;
		if(a<=3)
		{
			b=10;
			
		}
		else
		{
			 a=a-3;
			 int s=(int)(a/0.5);
			 double t=a%0.5;
			 b=10+s*1;
			 
			 if(t==0)
			 b=b;
			 else
			 b=b+1;  

			 if(a<15)
			 b=b;
			 else
			 b=1.5*b;
	}
	  int s0=(int)(t0/2.5);
	  
       int b0=(int)(b+s0*1);
	System.out.println(b0);
}}