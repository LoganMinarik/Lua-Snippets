print("Choose a color: red or blue?")
local choice = io.read()  -- Takes user input

if choice:lower() == "red" then
    print(":3")
elseif choice:lower() == "blue" then
    print(">:3")
else
    print("Invalid choice! Please pick red or blue.")
end
-- This script prompts the user to choose between red and blue, and responds with a different emoticon based on the choice.
-- It also handles invalid input by informing the user to pick a valid option.