#!/usr/bin/env bash

# username.sh — validate a username with the given rules:
# - Only lowercase letters, digits, and underscore
# - Must start with a lowercase letter
# - Length between 3 and 12 characters inclusive

print_rules() {
  cat <<'RULES'
Username rules:
- Only lowercase letters (a–z), digits (0–9), and the underscore (_) are allowed
- The first character must be a lowercase letter (a–z)
- The length must be at least 3 and at most 12 characters
RULES
}

is_valid_username() {
  local name="$1"
  # Starts with lowercase letter, then 2–11 allowed chars to make total length 3–12
  [[ "$name" =~ ^[a-z][a-z0-9_]{2,11}$ ]]
}

main() {
  print_rules
  echo

  while true; do
    read -r -p "Enter a username: " username

    if is_valid_username "$username"; then
      echo "Thank you — \"$username\" is a valid username."
      exit 0
    else
      echo "Invalid username. Please follow the rules above and try again."
      echo
    fi
  done
}

main

