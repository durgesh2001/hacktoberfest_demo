import java.util.Stack;
import java.util.Scanner;
public class TowerOfHanoi {
	public static int N;
	public static Stack<Integer>[] tower=new Stack[4];
	public static int i;
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		tower[1]=new Stack<Integer>();
		tower[2]=new Stack<Integer>();
		tower[3]=new Stack<Integer>();
		System.out.println("Enter number of disks");
		Scanner in=new Scanner(System.in);
		int num=in.nextInt();
		N=num;
		toh(num);
		in.close();
	}
	public static void toh(int n){
		for(i=n;i>0;i--){
			tower[1].push(i);
		}
		display();
		move(n,1,2,3);
	}
	public static void move(int n,int start,int center,int end){
		if(n>0){
			//moving from first tower to center tower n-1 disks
			move(n-1,start,end,center);
			int d=tower[(int)start].pop();
			tower[(int)end].push(d);
			System.out.println("Moving disks "+n+" from "+(char)(start+64)+" to "+(char)(end+64));
			
			display();
			//moving from center tower to start tower n-1 disks
			move(n-1,(int)center,(int)start,(int)end);
		}
	}
	public static void display(){
		System.out.println(" A | B | C ");
		for(i=N-1;i>=0;i--){
			String d1=" ",d2=" ",d3=" "; 
			try{
				d1=String.valueOf(tower[1].get(i));			
			}catch(Exception e){
			}
			try{
				d2=String.valueOf(tower[2].get(i));			
			}catch(Exception e){
			}
			try{
				d3=String.valueOf(tower[3].get(i));			
			}catch(Exception e){
			}
			System.out.println(" "+d1+" | "+d2+" | "+d3);
		}		
	}
}
