all: BTree

BehavioralNode.o: BehavioralNode.h BehavioralNode.cpp
	g++ -c -g "BehavioralNode.cpp" -o BehavioralNode.o

DecoratorNode.o: BehavioralNode.h DecoratorNode.h DecoratorNode.cpp
	g++ -c -g "DecoratorNode.cpp" -o DecoratorNode.o

LeafNode.o: BehavioralNode.h LeafNode.h LeafNode.cpp
	g++ -c -g "LeafNode.cpp" -o LeafNode.o

CompositeNode.o: BehavioralNode.h CompositeNode.h CompositeNode.cpp
	g++ -c -g "CompositeNode.cpp" -o CompositeNode.o

MasterNode.o: CompositeNode.h MasterNode.h MasterNode.cpp
	g++ -c -g "MasterNode.cpp" -o MasterNode.o

SelectorNode.o: CompositeNode.h SelectorNode.h SelectorNode.cpp
	g++ -c -g "SelectorNode.cpp" -o SelectorNode.o

SequenceNode.o: CompositeNode.h SequenceNode.h SequenceNode.cpp
	g++ -c -g "SequenceNode.cpp" -o SequenceNode.o

TestLeaf.o: LeafNode.h TestLeaf.h TestLeaf.cpp
	g++ -c -g "TestLeaf.cpp" -o TestLeaf.o

BehavioralTree.o: BehavioralTree.h BehavioralTree.cpp
	g++ -c -g "BehavioralTree.cpp" -o BehavioralTree.o

BTreeConsole.o: CompositeNode.h SequenceNode.h BehavioralTree.h TestLeaf.h BTreeConsole.cpp
	g++ -c -g "BTreeConsole.cpp" -o BTreeConsole.o

BTree: BehavioralNode.o DecoratorNode.o LeafNode.o CompositeNode.o MasterNode.o SelectorNode.o SequenceNode.o TestLeaf.o BehavioralTree.o BTreeConsole.o
	@echo "Building BTree App"
	g++ -o BTree -g BehavioralNode.o DecoratorNode.o LeafNode.o CompositeNode.o  MasterNode.o SelectorNode.o SequenceNode.o TestLeaf.o BehavioralTree.o BTreeConsole.o

clean:
	@echo "Removing object files and executable"
	rm -f BTree *.o

install:
	@echo "Installing"
	cp BTRee /usr/bin

uninstall:
	@echo "Uninstalling"
	rm -f /usr/bin/btree
