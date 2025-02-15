pragma solidity ^0.8.4;

contract Example3 {
    uint256 marginPercentage = 30;
    function getOwnerMargin(uint256 amount)
        public
        view
        returns (uint256 amountForSender, uint256 amountForOwner)
    {
        amountForOwner = (amount * marginPercentage) / 100;
        amountForSender = 100 - amountForOwner;
    }

}

// before - 217811
// after - simplify math operation - 212429