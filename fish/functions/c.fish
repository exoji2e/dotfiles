function c
    g++ -std=c++17 -Wall -Wconversion -g -fsanitize=address,undefined $argv
end
