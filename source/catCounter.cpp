#include "catCounter.h"

#include <string>
#include <fstream>


void catCounter::countFileOccurences(std::ifstream& infile)
{
    std::string current;
    while(infile >> current)
    {
        if(current == catCounter::getKeyword()) {
            catCounter::catOccurences++;
        }
    }
}

void catCounter::countArgOccurences(int args, char** argv)
{
    for (int i = 1; i < args; i++)
    {
        if(argv[i] == catCounter::getKeyword())
        {
            catCounter::catOccurences++;
        }
    }
}