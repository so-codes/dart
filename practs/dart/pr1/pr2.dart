class Bank{
  String name = "";
  int accno = 0, bankbal = 0;
  
  void deposit(int dep){
    bankbal += dep;
    print("Account holders balance after depositing money: $bankbal");
  }
  
  void withdraw(int wit){
    if(bankbal >= wit){
      if((bankbal-wit) <= 5000){
        print("Cannot withdraw min bal 5000 is required");
      } else if (bankbal>wit){
          bankbal = bankbal - wit;
          print("Account bal after withdrawal is : $bankbal");  
      } else {
          print("Withdrawal amount should be less than your ");
      }
    }
  }
  
   void displayDetails(){
     print("Account name is : $name");
     print("Account no is : $accno");
     print("Account balance is : $bankbal");
   }
}

void main(){
  Bank customer = Bank();
  customer.name = "Kurizu";
  customer.accno = 21;
  customer.bankbal = 10000;
  
  customer.displayDetails();
  print("\n");
  
  customer.deposit(1000);
  customer.displayDetails();
  print("\n");
  
  customer.withdraw(2000);
  customer.displayDetails();
}