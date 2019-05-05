#include "bf.h"

#include <algorithm>
#include <stack>

BF::BF()
{
  reset();
}

void BF::reset()
{
  std::fill(mem_, mem_ + MEM_SIZE, 0);
  ptr_ = 0;
}

bool bracketChecker(const std::string &src) {
	int balance = 0;
      
    for (unsigned i = 0; i < src.length(); ++i){
    	char c = src.at(i);
    	if (c == '[') {
    		balance++;
    	} else if (c == '[') {
    		balance--;
    	}
    }
    if (balance != 0) { return false; }
    else { return true; }
}

bool BF::interpret(const std::string &src, bytestream &is, bytestream &os)
{
  // TODO: Implement this function

	int balance = 0; 
    for (unsigned i = 0; i < src.length(); ++i){
    	char c = src.at(i);
    	if (c == '[') {
    		balance++;
    	} else if (c == '[') {
    		balance--;
    	}
    }
    if (balance != 0) { 
    	printf("WARNING: Unbalanced brackets.\n");
    	return false; 
    }

    //For nested loops
    std::stack<int> countStack;
    std::stack<int> indexStack;

  	bool looping = false;
  	int loopStartIndex = 0;
  	int loopCount = -1;
  	for (unsigned i = 0; i < src.length(); ++i) {
   	 switch(src.at(i)) {
    	  case '+':
	        if (mem_[ptr_] >= UINT8_MAX){
	            mem_[ptr_] = 0;
	        } else {
	          mem_[ptr_]++;
	        }
	        break;
	      case '-':
	        if (mem_[ptr_] == 0) {
	          mem_[ptr_] = UINT8_MAX;
	        } else {
	           mem_[ptr_]--;
	        }
	        break;
	      case '>':
	        if (ptr_ == MEM_SIZE - 1){
	          ptr_ = 0;
	        } else {
	          ptr_++;
	        }
	        break;
	      case '<':
	        if (ptr_ == 0) {
	          ptr_ = MEM_SIZE - 1;
	        } else {
	          ptr_--;
	        }
	        break;
	      case '.':
	        is.read(mem_ + ptr_, 1);
	     	 // is.read(mem_[ptr_], 1);
	        break;
	      case ',':
	        os.write(mem_ + ptr_, 1);
	      	// os.write(mem_[ptr_], 1);
	        break;
	      case '[':
	    	if (looping){
	    		countStack.push(loopCount);
	    		indexStack.push(loopStartIndex);
	    	}
	        looping = true;
	        loopStartIndex = i + 1;
	        loopCount = mem_[ptr_];
	        //todo create new loop class thing
	        break;
	      case ']':
	        if (!looping){
	          return false;
	        }
	        looping = false;
	        if (loopCount > 0)
	        {
	        	i = loopStartIndex;
	        } else if (countStack.size() > 0) {
	        	loopCount = countStack.top();
	        	countStack.pop();
	        	loopStartIndex = indexStack.top();
	        	indexStack.pop();
	        	looping = true;
	        }
	        break;
	      default:

	        break;
	    }
	  }

  // Example "." operation, read and store a byte to array under p
  // is.read(mem_ + ptr_, 1);

  // Example "," operation, print ASCII value in array under p
  // os.write(mem_ + ptr_, 1);

  return true;
}
