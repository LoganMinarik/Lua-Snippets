local exchangeRates = {
    -- Add more currencies and their exchange rates as needed
    USD = 1.0,  -- Base currency (US Dollar)
    USDC = 1.0,  -- USDC is pegged to USD
    EUR = 0.85,  -- Euro
    JPY = 150, -- Japanese Yen
    PYUSD = 1.0,  -- PYUSD is pegged to USD
}

local function convertCurrency(amount, fromCurrency, toCurrency)
    local fromRate = exchangeRates[fromCurrency]
    local toRate = exchangeRates[toCurrency]

    if fromRate and toRate then
        local amountInUSD = amount / fromRate  -- Convert to USD
        local convertedAmount = amountInUSD * toRate  -- Convert to target currency
        return convertedAmount
    else
        print("Invalid currency code!")
        return nil
    end
end

print("Welcome to the Currency Converter!")
print("Available currencies: USD, USDC, EUR, JPY, PYUSD")
print("Enter the amount you want to convert:")
local amount = tonumber(io.read())  -- Takes user input as a number

print("Enter the currency you want to convert from (e.g., USD):")
local fromCurrency = io.read()  -- Takes user input as a string

print("Enter the currency you want to convert to (e.g., USDC):")
local toCurrency = io.read()  -- Takes user input as a string
-- Preform the conversion
local convertedAmount = convertCurrency(amount, fromCurrency, toCurrency)
-- Print the result
if convertedAmount then
    print(amount .. " " .. fromCurrency .. " is equal to " .. convertedAmount .. " " .. toCurrency)
else
    print("Conversion failed.")
end