#ifndef NODE_H
#define NODE_H

struct Node {
    char ch;
    int freq;
    Node *left, *right;
    
    Node(char c, int f);
};

#endif
