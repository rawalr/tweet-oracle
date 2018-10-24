pragma solidity ^0.4.23;


contract predictionMarket{
    
    string theQuestion;
    mapping (address => Vote) Voters;
    struct Vote {
        bool Vote_Status; //0 or 1 based on what they vote
        uint256 Amount; //amount of bet
    }
    
    struct Pool {
        uint256 sumYes;
        uint256 sumNo;
    }

  constructor(string theQuestion) {
    theQuestion = theQuestion;
  }

  //NO is 0, YES is 1
  function vote(bool yesOrNo) public {
      address submitter = msg.sender;
      Voters[submitter].Vote_Status = yesOrNo; //sets vote_status
      Voters[submitter].Amount = msg.value; //sets vote amount
  }

  function check() public returns (bool, uint256) {
      address submitter = msg.sender;
      return (Voters[submitter].Vote_Status, Voters[submitter].Amount);
  }

  function calculateWinnings() {
      address submitter = msg.sender;
      

  }

  function withdraw(uint256 amount) {

  }

  function claimWinnings() {

  }

  function() public payable {
    revert();
  }

