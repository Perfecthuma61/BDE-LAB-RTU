def validate_binary(binary): 

 """Check if the input is a valid binary number.""" 

 return all(char in '01' for char in binary) 

def binary_addition(bin1, bin2): 

 """Add two binary numbers.""" 

 dec1 = int(bin1, 2) 

 dec2 = int(bin2, 2) 

 result = dec1 + dec2 

 return bin(result)[2:] 

def binary_subtraction(bin1, bin2): 

 """Subtract two binary numbers."""
 dec1 = int(bin1, 2) 

 dec2 = int(bin2, 2) 

 result = dec1 - dec2 

 return bin(result)[2:] if result >= 0 else "Negative result" 

def binary_multiplication(bin1, bin2): 

 """Multiply two binary numbers.""" 

 dec1 = int(bin1, 2) 

 dec2 = int(bin2, 2) 

 result = dec1 * dec2 

 return bin(result)[2:] 

def binary_division(bin1, bin2): 

 """Divide two binary numbers.""" 

 dec1 = int(bin1, 2) 

 dec2 = int(bin2, 2) 

 if dec2 == 0: 

 return "Division by zero error" 

 result = dec1 // dec2 # Integer division 

 return bin(result)[2:] 

def main(): 

 while True: 

 print("\nMenu:") 

 print("1. Addition") 

 print("2. Subtraction") 

 print("3. Multiplication") 

 print("4. Division") 

 print("5. Exit") 

 

 choice = input("Enter your choice: ") 

 

 if choice in ['1', '2', '3', '4']: 

 bin1 = input("Enter the first binary number: ") 

 bin2 = input("Enter the second binary number: ") 

 

 if not (validate_binary(bin1) and validate_binary(bin2)): 

 print("Invalid binary input.") 

 continue 

 

 if choice == '1': 

 print(f"Result (Addition): {binary_addition(bin1, bin2)}") 

 elif choice == '2': 

 print(f"Result (Subtraction): {binary_subtraction(bin1, bin2)}") 

 elif choice == '3': 

 print(f"Result (Multiplication): {binary_multiplication(bin1, bin2)}") 

 elif choice == '4': 

 print(f"Result (Division): {binary_division(bin1, bin2)}") 

 

 elif choice == '5': 

 print("Exiting the program.") 

 break 

 

 else: 

 print("Invalid choice. Please try again.") 

if __name__ == "__main__":
  main()
  
