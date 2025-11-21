Function Invoke-CollatzConjecture() {                   # Collatz Conjecture implementation in PowerShell
    [CmdletBinding()]                                   # Enables advanced function features
    Param(                                              # Parameters for the function
        [Int64]$Number                                  # Input number for the Collatz Conjecture     
    )                                                   # End of parameters
if ($Number -lt 1) {                                    # Check if the number is less than 1
    throw "error: Only positive numbers are allowed"    # Throw an error if the number is not positive
    }                                                   # End of parameter validation
    $steps = 0                                          # Initialize step counter
    while ($Number -ne 1) {                             # Loop until the number becomes 1
        if ($Number % 2 -eq 0) {                        # Check if the number is even
            $Number /= 2                                # Divide the number by 2 if it is even  
        } else {                                        # If the number is odd  
            $Number = $Number * 3 + 1                   # Apply the Collatz operation for odd numbers
        }                                               # End of if-else   
        $steps++                                        # Increment the step counter
    }                                                   # End of while loop
    return $steps                                       # Return the total number of steps taken to reach 1
}                                                       # End of function definition