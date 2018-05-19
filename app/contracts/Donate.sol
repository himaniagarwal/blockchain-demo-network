pragma solidity ^0.4.17;

contract Donate {
 
function Donate() public{
  Donor storage donor1;
  donor1.id = 1;
  donor1.donorName  = "Adam";
  donor1.balance = 1000;
  Donor storage donor2;
  donor2.id = 2;
  donor2.donorName = "Eve";
  donor2.balance = 1000;
  
  donors[0] = donor1;
  donors[1] = donor2;

  Acceptor storage acc1;
  acc1.id = 1;
  acc1.acceptorName = "Xmen";
  acc1.balance =0;
  Acceptor storage acc2;
  acc2.id = 2;
  acc2.acceptorName = "Foobar";
  acc2.balance = 0;

  acceptors[0] = acc1;
  acceptors[1] = acc2;
 }

 struct Donor {
  uint id;
	string donorName;
	uint balance;
 }
 
 Donor[2] donors;
 Acceptor[2] acceptors;

 struct Acceptor {
  uint id;
	string acceptorName;
	uint balance;
 }

 function donateAmount(uint donor_id , uint acceptor_id , uint amount) public{
	Donor memory current_donor;
  Acceptor memory target_acceptor;
  for(uint donor = 0 ; donor < donors.length ; donor++){
    if(donors[donor].id == donor_id){
      current_donor = donors[donor];
      break;
    }
  }

  for(uint acceptor = 0 ; acceptor < acceptors.length ; acceptor++){
    if(acceptors[acceptor].id == acceptor_id){
      target_acceptor = acceptors[acceptor];
      break;
    }
  }

  if(current_donor.balance >= amount){
    current_donor.balance = current_donor.balance - amount;
    target_acceptor.balance = target_acceptor.balance + amount;
  }
 }

 function getDonorBalance(uint donor_id) view returns (uint){
  Donor memory current_donor;
  for(uint donor = 0 ; donor < donors.length ; donor++){
    if(donors[donor].id == donor_id){
      current_donor = donors[donor];
      break;
    }
  }
  return current_donor.balance;
 }

 function getAcceptorBalance(uint acceptor_id) view returns (uint){
  Acceptor memory target_acceptor;
  for(uint acceptor = 0 ; acceptor < acceptors.length ; acceptor++){
    if(acceptors[acceptor].id == acceptor_id){
      target_acceptor = acceptors[acceptor];
      break;
    }
  }
  return target_acceptor.balance;
 }
}

	
