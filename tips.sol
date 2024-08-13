// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract tips{

    address owner;
    Waitress[] waitress;
    

    constructor(){
        owner = msg.sender;
    }

    //1.ใส่เงินเข้าไปในกระปุก

    function addtips() payable public {

    }
    //สามารถรับเงินได้ คือ payable เป็น public
    //2.สามารถดูเงินในกระปุกได้ว่ามีเท่าไหร่

    function viewtips() public view returns (uint){
        return address(this).balance;
    }

    //3.เพิ่มคนที่จะได้รับทิป structure waitress
    struct Waitress{
        address payable  walletAddress;
        string name;
    }

    //3.2 add waitress
    function addWaitress(address payable  walletAddress,string memory name)public {
        bool waitressExist = false;

        if(waitress.length >=1){
        for(uint i=0; i<waitress.length; i++){
           if(waitress[i].walletAddress == walletAddress){
            waitressExist = true;
        }    
       }     
     }        


    if(waitressExist==false){
        waitress.push(Waitress(walletAddress,name));
    }

}
    //4.ลบคนได้

    //5.ดูคนที่ได้รับเงิน
    function viewWaitress() public  view returns  (Waitress[] memory ){
        return waitress;
    }

    //6.จ่ายเงิน
}