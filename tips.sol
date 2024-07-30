// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract tips{
    address owner;
    constructor(){
        owner = msg.sender;
    }

    //1.ใส่เงินเข้าไปในกระปุก

    function addtips() payable public {

    }

    //2.สามารถดูเงินในกระปุกได้ว่ามีเท่าไหร่

    function viewtips() public view returns (uint){
        return address(this).balance;
    }

    //3.เพิ่มคนที่จะได้รับทิป



    //4.ลบคนได้

    //5.ดูคนที่ได้รับเงิน

    //6.จ่ายเงิน
}