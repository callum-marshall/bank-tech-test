# Bank Tech Test
## Week 10 - Makers Academy Individual Challenge

- git init
- added my approach to readme
- added user stories to readme
- crc card for 1st user story
- rspec init
- bundle init (add ruby version, rspec, rubocop and simplecov to gemfile)
- created rubocop.yml added scaffolint

---
Description of the problem - Makers given readme...

# Bank tech test

Today, you'll practice doing a tech test.

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

# My Approach

I started by making a list of the actions (potentially methods) I expect my program will need to meet the requirements.

make deposits
make withdrawal
print statements (in the specified format)

record date
record balance
record deposits (credit)
record withdrawals (deposit)

see date
see balance
see deposits (credit)
see withdrawals (deposit)

I then wrote User Stories to match these expected actions

### User Stories

```
as a bank manager
so that we can keep our books straight
i would like accounts to start with an opening balance of 0
```
```
as a bank user
so that i can see how much money is in my account
I would like to be able to print a statement that shows my balance
```
```
as a bank user
so that i can store money
i would like to be able to make deposits into my account
```
```
as a bank user
so that i can keep track of my deposits
i would like to be able to print a statement that shows my deposits
```
```
as a bank user
so that i can spend my money
i would like to be able to make withdrawals out of my account
```
```
as a bank user
so that i can keep track of my deposits
i would like to be able to print a statement that shows my withdrawals
```
```
as a bank user
so that i know which days i made withdrawals and deposits
i would like to be able to print a statement that shows the date on which my activities occurred
```
```
as a bank manager
so that i can have a uniform statement
i would like our customers statements to be printed in the specified format
```
