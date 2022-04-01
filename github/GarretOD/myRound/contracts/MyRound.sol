

// import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/utils/Address.sol";



pragma solidity ^0.8.4;

contract MyRound {

    using Address for address;

    struct Call {
        string beverage;
        string region;
        uint8 price;
    }

    Call[] public Menu;

    mapping(string => uint8) public PriceList;

    // Store map of product, region, price, example:
    // {beer,Canada,$6},{beer,USA,$5},{coffee,Italy,$3}
    function  AddItem(string memory beverage, string memory region, uint8 price) public{

        Call memory NewShout;
        NewShout.beverage = beverage;
        NewShout.region = region;
        NewShout.price = price;

        Menu.push(NewShout);

    }

    // Function to update price map, keeping product/region 
    // pairs unique

    function BuyRound ( address payable buddy, uint256 tab ) public {

        Address.sendValue( buddy, tab );

        // Just adding this to check
    }

}
