
#include <iostream>
#include <string>
#include <memory>

class Stu
{
    typedef std::string string;

public:
    Stu(const string &name) : name_(name) {
        std::cout << "Stu() by string ..." << std::endl;
    }

    Stu(const char *name)   : name_(name) {
        std::cout << "Stu() by const char * ..." << std::endl;
    }

    ~Stu() {
        std::cout << "~Stu() ..." << std::endl;
    }

private:
    string name_;
};
