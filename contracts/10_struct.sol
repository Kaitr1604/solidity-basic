// SPDX-License-Identifier: None
pragma solidity 0.8.3;

contract Struct {
    // storage array: khai báo ở ngoài function, lưu trên node
    // memory array: no gas, khai báo trong function, giải phóng khi đóng function
    // array as parameter
    struct Player {
        uint ID;
        address addr;
        string name;
    }

    Player[] players;
    mapping (address => Player) listPlayers;

    function foo(string calldata _name) external {
        Player memory player1 = Player(1, msg.sender, _name);
        player1.name = "updated name";
        players[0] = player1;
        delete  player1;
    }
}