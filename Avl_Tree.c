#include<stdio.h>
#include<stdlib.h>


struct node{
    int val;
    int height;
    struct node* left;
    struct node* right;
};

struct node * create_node(int v){
    struct node* temp = (struct node *)malloc(sizeof(struct node));
    temp -> val = v;
    temp -> left = temp -> right = NULL;
    temp -> height = 0;
    return temp;
}
int max(int a, int b){
    if(a > b)
        return a;
    return b;
}
int height(struct node* head){
    if(head == NULL)
        return 0;
    return 1+max(height(head->left),height(head->right));
}

int bf(struct node * head){
    if(head == NULL)
        return 0;
    else
        return height(head-> left) - height(head -> right);
}

struct node * ll_rot(struct node * head){
    struct node * y = head -> left;
    struct node * temp = y -> right;
    y -> right = head;
    head -> left = temp;
    head -> height= height(head);
    y -> height = height(y);
    return y;
}

struct node * rr_rot(struct node * head){
    struct node * y = head -> right;
    struct node * temp = y -> left;
    y -> left = head;
    head -> right = temp;
    head -> height= height(head);
    y -> height = height(y);
    return y;
}

struct node * insert_node(struct node * head, int val){
    if(head == NULL)
        return create_node(val);
    if (val < head -> val)
        head -> left = insert_node(head -> left, val);
    else if (val > head -> val)
        head -> right = insert_node(head -> right, val);
    else
        return head;
    head->height = 1 + max(height(head->left),height(head->right));
    int bff = bf(head);
    if(bff > 1 && val < head -> left -> val)
        return ll_rot(head);
    if (bff < 1 && val > head -> right -> val)
        return rr_rot(head);
    if (bff >1 && val > head -> left -> val){
        head -> left = rr_rot(head->left);
        return ll_rot(head);
    }
    if (bff < 1 && val < head -> right -> val){
        head -> right = ll_rot(head -> right);
        return rr_rot(head);
    }
    return head;
}

void preord(struct node * head){
    if(head == NULL)
        return;
    printf("%d ",head -> val);
    preord(head -> left);
    preord(head -> right);
}

void inord(struct node * head){
    if(head == NULL)
        return;
    inord(head -> left);
    printf("%d ",head -> val);
    inord(head -> right);
}

void postord(struct node * head){
    if(head == NULL)
        return;
    postord(head -> left);
    postord(head -> right);
    printf("%d ",head -> val);
}
int find(struct node * head, int val){
    if(head == NULL)
        return 0;
    if(val < head -> val)
        find(head -> left, val);
    else if(val > head -> val)
        find(head -> right, val);
    else
        return 1;
}

int main(){
    int hval, option;
    struct node * head = NULL;
    while(1){
        printf("\n1. Enter value\n2. pre order\n3. in order\n4. post order\n5. Exit\n6. Find\n");
        scanf("%d", &option);
        if(option == 1){
            int value;
            printf("Enter value:");
            scanf("%d", &value);
            head = insert_node(head, value);
        }else if(option == 2){
            preord(head);
        }else if(option == 3){
            inord(head);
        }else if(option == 4){
            postord(head);
        }else if(option == 5){
            break;
        }else if(option == 6){
            int value;
            printf("Enter value to be found:");
            scanf("%d", &value);
            printf("%d",find(head, value));
        }
    }
}
