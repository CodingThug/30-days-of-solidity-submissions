// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract MyCounter{
    int public  count;

    function incrementCount()public {
       count++;
    }

    function decrementCount()public {
        count--;
    }
}