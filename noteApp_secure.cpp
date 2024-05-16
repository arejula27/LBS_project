#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sstream>
#include <iostream>
#include <map>
#include <vector>
using namespace std;

int main()
{
    string passw;
    string user;
    string msg;

    printf("Enter username: ");
    fflush(stdout);
    cin >> user;

    // flush

    printf("Enter password: ");
    fflush(stdout);
    cin >> passw;

    if (user == "admin" && passw == "admin")
    {
        cout << "Welcome admin!" << endl;
    }
    else if ("pepe" == user && "123" == passw)
    {
        cout << "Welcome pepe!" << endl;
    }
    else
    {
        cout << "Invalid username or password" << endl;

        return 0;
    }

    std::map<string, string[10]> notesDB;
    // init a vector with 10 elements

    notesDB["pepe"][0] = "buy fruit";
    notesDB["admin"][0] = ("super secret");
    notesDB["admin"][1] = "call mum";

    while (true)
    {

        int choice;
        std::cout << "\nMenu:\n";
        std::cout << "1. Show Notes\n";
        std::cout << "2. Add Note\n";
        std::cout << "3. End\n";
        std::cout << "Enter your choice: ";
        std::cin >> choice;

        switch (choice)
        {
        case 1:
            std::cout << "Notes:\n";
            for (int i = 0; i < 10; i++)
            {
                std::cout << i << ". " << notesDB[user][i] << "\n";
            }
            break;
        case 2:
            // ask note id
            int id;
            std::cout << "Enter note id: ";
            std::cin >> id;
            if (id < 0 || id > 9)
            {
                std::cout << "Invalid id, range [0-9]\n";
                break;
            }
            // ask note

            cout << "Enter message: ";
            // secure input

            cin >> msg;
            notesDB[user][id] = msg;
            break;
        case 3:
            std::cout << "Ending program.\n";
            return 0;
        default:
            std::cout << "Invalid choice. Please try again.\n";
        }
    }
}
