# Bank Tech Test
## Week 10 - Makers Academy Individual Challenge

### Context - Makers Readme

Practice doing a tech test...

For most tech tests, you'll essentially have unlimited time.  This practice session is about producing the best code you can when there is a minimal time pressure.

You'll get to practice your OO design and TDD skills.

You'll work alone, and you'll also review your own code so you can practice reflecting on and improving your own work.

## Specification

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```
---

## My Approach

I started by making a list of the behaviours I expect my program will need to meet the requirements and acceptance criteria

- make deposits
- make withdrawals
- print statements (in the specified format)

- record date
- record balance
- record deposits (credit)
- record withdrawals (debit)

- see date
- see balance
- see deposits (credit)
- see withdrawals (deposit)

I then wrote User Stories to match these expected actions

### User Stories

```
as a bank user
so that i can save my money
i would like to be able to make deposits into my account
```
```
as a bank user
so that i can use my money
i would like to be able to make withdrawals out of my account
```
```
as a bank user
so that i can keep track of my deposits
i would like to be able to print a statement that shows my deposits
```
```
as a bank user
so that i can keep track of my deposits
i would like to be able to print a statement that shows my withdrawals
```
```
as a bank user
so that i know which days i made withdrawals and deposits
i would like to be able to print a statement that shows the date on which transactions occurred
```

---

## Instructions

### Set up

1. Clone this repository
2. Navigate to the directory in command line
3. Run `bundle install`
4. Tests can be run with `rspec`

### Run the project

1. run `irb` in the root directory
2. require the account.rb file `require './lib/account.rb'`
3. create a new instance of an account with `account_name = Account.new`
4. make a deposit with `account_name.deposit(amount to deposit)`
5. make a withdrawal with `account_name.withdraw(amount to withdraw)`
6. print your statement with `account_name.puts_statement`

[example use in IRB](bank-tech-test.png)
