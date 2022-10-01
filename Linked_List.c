#include<stdio.h>
#include<stdlib.h>

// Creating a Node
struct Node{
    int data;
    struct Node* next;
};

// Inserting a node at the beginning
struct Node* insert_at_beg(struct Node* head, int val){
    struct Node* x;
    x = (struct Node*)malloc(sizeof(struct Node));
    x -> next = head;
    x -> data = val;
    head = x;
    return head;
}

// Inserting a node at a specified position
struct Node* insert(struct Node* head, int val, int pos){
    struct Node* temp = head;
    for(int i = 0; i < pos; ++i)
        temp = temp -> next;
    struct Node* x;
    x = (struct Node*)malloc(sizeof(struct Node));
    x -> next = temp -> next;
    temp -> next = x;
    x -> data = val;
    return head; 
}

// Inserting a node at the end
struct Node* insert_at_lst(struct Node* head, int val){
    struct Node* temp = head;
    while(temp -> next != NULL){
        temp = temp -> next;
    }
    struct Node* x;
    x = (struct Node*)malloc(sizeof(struct Node));
    temp -> next = x;
    x -> data = val;
    x -> next = NULL;
    return head;
}

// Printing all the node values in the Linked List
void print(struct Node* head){
    struct Node* temp = head;
    if(temp -> next == NULL){
        printf("%d->",temp -> data);
    }
    while(temp != NULL){
        printf("%d->",temp -> data);
        temp = temp -> next;
    }
    printf("\n");
}

// Switch case like statement to perform operations in Linked List as per User's choice
int main(){
    int first;
    struct Node* head;
    head = (struct Node*)malloc(sizeof(struct Node));
    printf("Enter fist value:");
    scanf("%d", &first);
    head -> data = first;
    head -> next = NULL;
    while(1){
        printf("1.Insert at beginning\n2.Insert at end\n3.Insert at particular position\n4.Display\n69.End\n");
        int option;
        scanf("%d", &option);
        if(option == 1){
            int val;
            printf("Enter value:");
            scanf("%d", &val);
            head = insert_at_beg(head, val);
        }else if(option == 2){
            int val;
            printf("Enter value:");
            scanf("%d", &val);
            head = insert_at_lst(head, val);
        }else if(option == 3){
            int val, pos;
            printf("Enter value:");
            scanf("%d", &val);
            printf("Enter position:");
            scanf("%d", &pos);
            head = insert(head, val, pos);
        }else if(option == 4){
            print(head);
        }
        else if(option == 69){
            break;
        }
    }

}
