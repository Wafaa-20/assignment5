import 'dart:io' as io;

import 'package:colorful_print/colorful_print.dart';
import 'package:uuid/uuid.dart';

createAccount() {
  String userName;
  String accountNumber = '';
  Map<String, String> userAccount = {};
  var uuid = Uuid();

  printColor("Creating account with number:\n", textColor: TextColor.blue);

  //user name
  io.stdout.write("Enter Your Name: ");
  userName = io.stdin.readLineSync()!;

  //user account
  while (accountNumber.length < 21) {
    accountNumber += uuid.v4().replaceAll(RegExp(r'\D'), '');
  }
  accountNumber = accountNumber.substring(0, 21);
  userAccount[userName] = accountNumber;

  print("Your Acount Number is : $accountNumber\n");
  userAccount.forEach((key, value) {
    print("User: $key, Account Number: $value");
  });

  printColor("Account created successfully.\n", textColor: TextColor.green);
}
