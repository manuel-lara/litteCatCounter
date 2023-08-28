#include <iostream>
#include <fstream>
#include <string>

#include "catCounter.h"

int main (int argc, char** argv) {

	if(argc == 1)
	{
		std::cout << "no input or args, BYE" << std::endl;
		return 1;
	}

	catCounter CC;	
	std::ifstream inFile(argv[1]);
	if(inFile)
	{
		CC.countFileOccurences(inFile);
		std::cout << "Occurences in file: " << CC.getOccurences() << std::endl;
		inFile.close();
	}
	else //if first arg aint a file assume we have args to search only
	{
		CC.countArgOccurences(argc,argv);
		std::cout << "Occurences on command line: " << CC.getOccurences() << std::endl;
	}

	return 0;
}
