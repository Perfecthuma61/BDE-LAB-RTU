def decimal_to_binary(decimal): 

 return bin(decimal)[2:] 

def decimal_to_hexadecimal(decimal): 

 return hex(decimal)[2:].upper() 

def binary_to_decimal(binary): 

 return int(binary, 2) 

def hexadecimal_to_decimal(hexadecimal): 

 return int(hexadecimal, 16) 

def validate_input(input_type, value): 

 if input_type == "decimal": 

 return value.isdigit()
  elif input_type == "binary": 

 return all(char in '01' for char in value) 

 elif input_type == "hexadecimal": 

 return all(char in '0123456789ABCDEFabcdef' for char in value) 

 return False 

def main(): 

 while True: 

 print("\nMenu:") 

 print("1. Decimal to Binary") 

 print("2. Decimal to Hexadecimal") 

 print("3. Binary to Decimal") 

 print("4. Hexadecimal to Decimal") 

 print("5. Exit") 

 

 choice = input("Enter your choice: ") 

 

 if choice == '1': 

 decimal = input("Enter a decimal number: ") 

 if validate_input("decimal", decimal): 

 print(f"Binary: {decimal_to_binary(int(decimal))}") 

 else: 

 print("Invalid decimal input.") 

 

 elif choice == '2': 

 decimal = input("Enter a decimal number: ") 

 if validate_input("decimal", decimal): 

 print(f"Hexadecimal: {decimal_to_hexadecimal(int(decimal))}") 

 else: 

 print("Invalid decimal input.") 

 

 elif choice == '3': 

 binary = input("Enter a binary number: ") 

 if validate_input("binary", binary): 

 print(f"Decimal: {binary_to_decimal(binary)}") 

 else: 

 print("Invalid binary input.") 

 

 elif choice == '4': 

 hexadecimal = input("Enter a hexadecimal number: ") 

 if validate_input("hexadecimal", hexadecimal): 

 print(f"Decimal: {hexadecimal_to_decimal(hexadecimal)}") 

 else: 

 print("Invalid hexadecimal input.") 

 

 elif choice == '5': 

 print("Exiting the program.") 

 break 

 

 else: 

 print("Invalid choice. Please try again.") 

if __name__ == "__main__": 

 main()
