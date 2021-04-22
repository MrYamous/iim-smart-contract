//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0;
        
contract MyContract {

    address tipAddress = "0xc71fdbde4938d7605528fd998a7a5f5420eabb6a";

    constructor() {
        Expedition memory expedition = Expedition("Pending");
    }

    event Shipped(Expedition expe);
    event Delivered(Expedition expe);

    struct Expedition {
        string status;
    }

    function ship(Expedition memory expedition) public{
        expedition.status = "Shipped";
        emit Shipped(expedition);
    }

    function delivery(Expedition memory expedition) public{
        expedition.status = "Delivered";
        emit Delivered(expedition);
    }

    function giveTip(uint _amount) public payable{
        (bool sent, bytes memory data) = tipAddress.call(_amount);
        require(sent, "Le transfert a echoue");
    }
        
}
