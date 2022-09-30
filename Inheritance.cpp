#include<iostream>
#include<string>
using namespace std;

//class
class rectangle
{
public :                   
    //member variables
	int length;
	int breadth;
                    
	//member functions
	void show()
	{
		cout<<"length: "<<length<<"\n";
		cout<<"breadth: "<<breadth<<"\n";
	}
	void area()
	{
		cout<<"Area->Rectange: "<<length*breadth<<"\n";
	}
};
class cuboid:public rectangle    //inherit feature of rectangle class
{
	public :                    
    int height;
    
    	void Display()
	{
		cout<<"height: "<<height<<"\n";
	}
	void volume()
	{
		cout<<"Volume->Cuboid: "<<length*breadth*height<<"\n";
	}
};

int main()
{
	rectangle r;
    r.length=10;
    r.breadth=20;
	r.show();
	r.area();
	cuboid c;    

	c.length=10;
	 c.breadth=20;
	  c.height=20;
	  	c.show();
	  		c.Display();
	  		c.area();
	  		c.volume();
	return 0;
}
