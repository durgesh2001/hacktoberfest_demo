public class MergeSort {
    private Node head;
    private Node tail;
    int size;

    public MergeSort() {
        this.size = 0;
    }
    
    public Node sortList(Node head) {
        if (head == null || head.next == null) {
            return head;
        }

        Node mid = getMid(head);
        Node left = sortList(head);
        Node right = sortList(mid);

        return merge(left, right);
    }

    Node merge(Node list1, Node list2) {
        Node dummyHead = new Node();
        Node tail = dummyHead;
        while (list1 != null && list2 != null) {
            if (list1.value < list2.value) {
                tail.next = list1;
                list1 = list1.next;
                tail = tail.next;
            } else {
                tail.next = list2;
                list2 = list2.next;
                tail = tail.next;
            }
        }
        tail.next = (list1 != null) ? list1 : list2;
        return dummyHead.next;
    }

    Node getMid(Node head) {
        Node midPrev = null;
        while (head != null && head.next != null) {
            midPrev = (midPrev == null) ? head : midPrev.next;
            head = head.next.next;
        }
        Node mid = midPrev.next;
        midPrev.next = null;
        return mid;
    }

    public void insertFirst(int value) {
        Node node = new Node(value);
        node.next = head;
        head = node;

        if (tail == null) {
            tail = head;
        }
        size++;
    }

    public void display(Node head) {
        Node temp = head;

        while(temp!= null){
            System.out.print(temp.value + " -> ");
            temp = temp.next;
        }
        System.out.println("END");
    }

    private class Node{
        private int value;
        private Node next;

        public Node(int value) {
            this.value = value;
        }

        public Node(int value, Node next) {
            this.value = value;
            this.next = next;
        }

        public Node() {
        }
    }


    public static void main(String[] args) {
        MergeSort list = new MergeSort();
        // list.insertFirst(12);
        // list.insertFirst(10);
        // list.insertFirst(20);
        // list.insertFirst(15);
        // list.insertFirst(18);
        // list.insertFirst(13);
        //list.display(list.head);

    }
}