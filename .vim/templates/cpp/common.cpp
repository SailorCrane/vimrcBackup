#include <iostream>
#include <vector>
#include <list>

#include <numeric>
#include <algorithm>

// 获取数组长度
#define  ArraySize(array)       ( sizeof(array) / sizeof( array[0] ) )

typedef  std::vector<int>  VInt;
typedef  std::list<int>    LInt;

template<class Containor>
void showContain(const  Containor & ins)
{
    for( auto ele : ins )
        std::cout << ele  << " ";
    std::cout << std::endl;
}

int main(int argc, char **argv)
{
    std::cout << std::boolalpha;
    std::cout << "running..." << std::endl;


    std::cout << "end..." << std::endl;
}
