print("This is a claculator")
print("Please enter the first number:")
local num1 = io.read()  -- Takes user input as a number
print("Please enter the second number:")
local num2 = io.read()  -- Takes user input as a number
print("Please enter the operation (+, -, *, /):")
local operation = io.read()  -- Takes user input as a string
print("Calculating...")
-- Perform the calculation based on the operation provided by the user
if operation == "+" then
    print(num1 + num2)
elseif operation == "-" then
    print(num1 - num2)
elseif operation == "*" then
    print(num1 * num2)
elseif operation == "/" then
    if num2 ~= 0 then
        print(num1 / num2)
    else
        print("Error: Division by zero is not allowed.")
    end
else
    print("Invalid operation! Please use +, -, *, or /.")
end