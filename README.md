# README for Username Validation Script

## Author Information
- **Name:** Lorenzo Cocchi
- **Course:** Intro to *nix, CPSC 298-01
- **Assignment:** Username Validation
- **Date:** October 13, 2025

## Program Description
The program asks the user to input a username that only contains lowercase letters, numbers, or underscores. The length must be at least 3 and at most 12 characters, and must start with a lowercase letter. This is defined within the is_valid_username() function, where the following filters are checked as true or false is returned. In the main class, the print_rules() function prints the limitations of the username, then checked in a loop until the username is valid. Once it is, it thanks the user and exits the program.

## Username Requirements
This script validates usernames according to the following rules:
- Must start with a lowercase letter
- Can only contain lowercase letters, digits, and underscores
- Must be between 3 and 12 characters in length (inclusive)

## Usage
To run the script interactively:
```bash
./username.sh
```

To test with the provided input file:
```bash
./username.sh < username-input
```

## How the Script Works
The script is explained above. Simply put, there are 3 functions. Main, is_valid_username() which returns a boolean value based on the rules, and print_rules() which prints the rules. is_valid_username() checks the first parameter in the local scope of the variable in that function. It checks only the first positional parameter, '$1'.

## Regular Expression Pattern
The validation uses the following regular expression pattern:
```
^[a-z][a-z0-9_]{2,11}$
```
This pattern ensures that:
- The username starts with a lowercase letter `[a-z]`
- The following characters are lowercase letters, digits, or underscores `[a-z0-9_]`
- The total length is between 3 and 12 characters

## Testing Results
[Describe your testing process and results. Include:]
- Example valid usernames you tested (at least two)
- Example invalid usernames and why they fail (at least two)
- How you used the username-input file to test

## Challenges and Solutions
Understanding grep expressions like $1, creating functions to clear up the script, and uppercase. Ended up googling the solutions and getting help that way.

## Resources
Google

## License
This project is part of coursework for Chapman University and is intended for educational purposes.
