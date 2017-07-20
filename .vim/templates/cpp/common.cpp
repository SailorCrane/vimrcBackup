#include <iostream>
#include <vector>

// 获取数组长度
#define  ArraySize(array)       ( sizeof(array) / sizeof( array[0] ) )

typedef  std::vector<int>  VInt;

void showVector(const  VInt & ins)
{
    for( auto ele : ins )
        std::cout << ele << std::endl;
    std::cout << std::endl;
}

int main(int argc, char **argv)
{
    std::cout << "running..." << std::endl;


    std::cout << "end..." << std::endl;
}
