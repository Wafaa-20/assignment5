import 'dart:io' as io;

import 'package:bancking/banking%20Method/close_%20account.dart';
import 'package:bancking/banking%20Method/create_account.dart';
import 'package:bancking/banking%20Method/deposit_Or_withdraw.dart';
import 'package:bancking/banking%20Method/view_transaction_history.dart';
import "package:colorful_print/colorful_print.dart";

class Bank {
  mainMenu() {
    printColor(
      "\n *********** Welcome to the Bank! ***********\n",
      textColor: TextColor.blue,
    );
    do {
      print("Please select an option:\n");
      print("1.Create an Account");
      print("2.Deposit or withdraw money");
      print("3.View transaction history");
      print("4.Close their accounts");
      print("5.Exit");

      io.stdout.write('\x1B[33mEnter your choice: \x1B[0m');
      int? userChoice = int.parse(io.stdin.readLineSync()!);
      print("___________________________________________________\n");

      switch (userChoice) {
        case 1:
          createAccount();
        case 2:
          depositOrWithdraw();
        case 3:
          viewTransactionHistory();
        case 4:
          closeAccount();
        case 5:
          print("Thank you for visiting the Bank!");
          io.exit(0);
        default:
          printColor(
            "Invalid input.Please Entre a choice between 1 and 5 \n",
            textColor: TextColor.red,
          );
      }
    } while (true);
  }
}
