// AICoins ICO

// Version of compiler
pragma solidity >=0.7.0 <0.9.0;

contract AICoinICO {
    // Inroducing the maximum number of AICoins available for sale
    uint public max_aicoins = 8100000;

    // Inroducing the USD to AICoins conversion rate
    uint public usd_to_aicoins = 10000;

    // Inroducing the total number of AICoins that have been bought by the investors
    uint public total_aicoins_bougth = 0;

    // Mapping from the investor address to its equity in AICoins and USD
    mapping(address => uint) equity_aicoins;
    mapping(address => uint) equity_usd;

    // Checking if the investor can buy AICoins
    modifier can_buy_aicoins(uint usd_invested) {
        require(usd_invested * usd_to_aicoins + total_aicoins_bougth <= max_aicoins);
        _;
    }
}
