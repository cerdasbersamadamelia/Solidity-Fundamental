// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract MyContract {
    // struct is like make custom variabels
    struct Book {
        string title;
        string author;
        bool completed;
    }

    // Array of books
    Book[] public books;

    // add books
    function add(string memory _title, string memory _author) public {
        books.push(Book(_title, _author, false));
    }

    // create books
    function get(uint _index)
        public 
        view 
        returns (string memory title, string memory author, bool completed)
    {
        // memory --> only save if the function is played, after that gone
        // storage --> save forever in storage blockchain
        Book storage book = books[_index];
        return (book.title, book.author, book.completed);
    }
}