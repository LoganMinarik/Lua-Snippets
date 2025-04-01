print("Let's play a game!")
print("You have 3 lives to guess the correct number between 1 and 10.")
local correctNumber = math.random(1, 10)  -- Generates a random number between 1 and 10
local lives = 3  -- Number of lives
local guessedCorrectly = false  -- Flag to check if the user guessed correctly
local guessedNumber  -- Variable to store the user's guess
-- Loop until the user guesses correctly or runs out of lives

print("Guess a number:")
guessedNumber = tonumber(io.read())  -- Takes user input as a number

if guessedNumber == correctNumber then
    print("Congratulations! You guessed the correct number: " .. correctNumber)
    guessedCorrectly = true  -- Set the flag to true if guessed correctly
else
    lives = lives - 1  -- Decrease the number of lives by 1
    print("Wrong guess! You have " .. lives .. " lives left.")
end
-- Continue the game until the user guesses correctly or runs out of lives
while not guessedCorrectly and lives > 0 do
    print("Guess again:")
    guessedNumber = tonumber(io.read())  -- Takes user input as a number

    if guessedNumber == correctNumber then
        print("Congratulations! You guessed the correct number: " .. correctNumber)
        guessedCorrectly = true  -- Set the flag to true if guessed correctly
    else
        lives = lives - 1  -- Decrease the number of lives by 1
        print("Wrong guess! You have " .. lives .. " lives left.")
    end
end