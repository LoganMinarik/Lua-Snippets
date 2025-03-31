print("Hello, would you like to take one of my pills? You can choose between red, blue, and purple.")
local choice = io.read()  -- Takes user input
if choice:lower() == "red" then
    print("You chose the red pill! You are now leaving the Matrix.")
elseif choice:lower() == "blue" then
    print("You chose the blue pill! You are now staying in the Matrix.")
elseif choice:lower() == "purple" then
    print("You chose the purple pill! You are now in the Matrix, but with a twist.")
else
    print("Wow... You are not even trying to play along, huh?")
end
