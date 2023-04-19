pragma solidity ^0.8.0;

contract UserRegistration {
    struct User {
        string name;
        string email;
    }

    mapping(address => User) public users;
    address[] public userAddresses;

    function registerUser(string memory _name, string memory _email) public {
        User memory newUser = User({name: _name, email: _email});
        users[msg.sender] = newUser;
        userAddresses.push(msg.sender);
    }

    function getUserCount() public view returns (uint256) {
        return userAddresses.length;
    }
}
