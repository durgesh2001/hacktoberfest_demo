#include<iostream>
using namespace std;

struct node{
	int key;
	node *left;
	node *right;
	node(int val){
		key=val;
		left=NULL;
		right=NULL;
	}
};
void inorder(node *root){
	if(root!=NULL){
		inorder(root->left);
		cout<<root->key<<" ";
		inorder(root->right);
	}
}

int main(){
    node *root=new node(5);
	node *second=new node(10);
	node *third=new node(15);
	node *fourth=new node(20);
	node *fifth=new node(25);
	root->left=second;
	root->right=third;
	third->left=fourth;
	third->right=fifth;
	
	inorder(root);



}
