pragma solidity ^0.4.4;

import "./Event.sol";

// This is just a simple example of a coin-like contract.
// It is not standards compatible and cannot be expected to talk to other
// coin/token contracts. If you want to create a standards-compliant
// token, see: https://github.com/ConsenSys/Tokens. Cheers!

contract EventManager {
	address public owner;
	address[] public events;

	function EventManager() {
		owner = msg.sender;
	}

	function createEvent(bytes32 _eventName, uint _price, uint _numTickets) {
		// dispatch an evnet
		events.push(new Event(
			msg.sender,
			_eventName,
			_price,
			_numTickets
		));
	}

	function getEvents() constant returns(address[]) {
		return events;
	}

	/*function test() constant returns (uint) {
		return 1;
	}*/
	/*mapping (address => uint) balances;

	event Transfer(address indexed _from, address indexed _to, uint256 _value);

	function MetaCoin() {
		balances[tx.origin] = 10000;
	}

	function sendCoin(address receiver, uint amount) returns(bool sufficient) {
		if (balances[msg.sender] < amount) return false;
		balances[msg.sender] -= amount;
		balances[receiver] += amount;
		Transfer(msg.sender, receiver, amount);
		return true;
	}

	function getBalanceInEth(address addr) returns(uint){
		return ConvertLib.convert(getBalance(addr),2);
	}

	function getBalance(address addr) returns(uint) {
		return balances[addr];
	}*/
}
