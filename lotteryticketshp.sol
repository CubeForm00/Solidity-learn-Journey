// SPDX-License-Identifier: MIT

pragma solidity 0.8.8;

contract LotteryTicketShop {

    
    struct Ticket {

        string OwnerName;
        uint256 LuckyNumber;
    }
    
    mapping( address => Ticket) ownertoticket;

    function buyticket(string memory _OwnerName, uint256 _LuckyNumber) public {
        
       ownertoticket[msg.sender].OwnerName = _OwnerName;
       ownertoticket[msg.sender].LuckyNumber = _LuckyNumber;
    
    }

    function seemyticket() public view returns(Ticket memory){

        return ownertoticket[msg.sender];
        
        

    }


}
