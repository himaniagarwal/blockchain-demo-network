pragma solidity ^0.4.17;

contract Donate {
 
function Donate() public{
  Donor storage donor1;
  donor1.donorName  = "Adam";
  donor1.balance = 1000;
  Donor storage donor2;
  donor2.donorName = "Eve";
  donor2.balance = 1000;
  Acceptor storage acc1;
  acc1.acceptorName = "Xmen";
  acc1.balance =0;
  Acceptor storage acc2;
  acc2.acceptorName = "Foobar";
  acc2.balance = 0;
 }
 address public donor;
 
 struct Donor {
	string donorName;
	uint balance;
 }
 
 struct Acceptor {
	string acceptorName;
	uint balance;
 }

 function donateAmount(uint donor_id , uint acceptor_id , uint amount){
	
 }
}
	
