print("does the art look like souless garbage?")
print("y/n")
local choice = io.read()  -- Takes user input

if choice:lower() == "y" then
    print("then it is souless AI slop")
elseif choice:lower() == "n" then
    print("then it is real art made by a human artist")
else
    print("Error.")
end
