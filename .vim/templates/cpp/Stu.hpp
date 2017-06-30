
#include <iostream>
#include <string>
#include <vector>
#include <list>

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

    ~Stu() {
        std::cout << "~Stu() ..." << std::endl;
    }


    void show() const {
        std::cout << "name: " << name_ << std::endl;
    }

    void SetName(string name) {
        name_ = name;
    }

private:
    string name_;
};

typedef  std::vector<Stu>   VStu;
typedef  std::list<Stu>     LStu;
