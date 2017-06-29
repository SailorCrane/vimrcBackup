
#include <iostream>
#include <string>
#include <memory>

class Person
{
public:
    Person() {

    }

};

class Stu : public Person
{
    typedef std::string string;

public:
    Stu(const string &name = string("") ) : name_(name) {
        std::cout << "Stu() by string ..." << std::endl;
    }

    Stu(const char *name)   : name_(name) {
        std::cout << "Stu() by const char * ..." << std::endl;
    }

    // copy constructor
    Stu(const Stu &stu) : name_(stu.name_){
        std::cout << "copy Stu() by  name " << name_ << std::endl;
    }

    void show() {
        std::cout << name_ << std::endl;
    }

    ~Stu() {
        std::cout << "~Stu() ..." << std::endl;
    }

private:
    string name_;
};
