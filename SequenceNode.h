#ifndef SEQUENCE_NODE_H
#define SEQUENCE_NODE_H

// A composite node that stops at the first node that returns
// a negative value. Think of an AND gate

#include "CompositeNode.h"

class SequenceNode: public CompositeNode {
public:
  Status processChildren();
};

#endif
