#pragma once

#include <string>
#include <fstream>

class catCounter
{
    public:
    catCounter()
    {
        catOccurences = 0;
        keyword = "cat";
    }

    int getOccurences(){
        return catOccurences;
    }

    void countFileOccurences(std::ifstream& inFile);

    void countArgOccurences(int args, char** argv);

    protected:
    std::string getKeyword(){
        return keyword;
    }

    private:
    int catOccurences;
    std::string keyword;
};