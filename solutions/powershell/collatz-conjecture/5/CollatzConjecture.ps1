Function Invoke-CollatzConjecture() {                      
    # We are creating a function called Invoke-CollatzConjecture.
    # This is the command name the *tests file* will use to check our work.

    [CmdletBinding()]                                       
    # This makes the function act like a built-in PowerShell command.
    # Not required for the math to work, but good practice.

    Param(                                                  
        [Int64]$Number                                      
        # This is the input we will work on.
        # The value for $Number is given by whoever calls the function.
        # In the tests, they call:
        # Invoke-CollatzConjecture -Number 12
        # That "12" becomes the value of $Number here.
    )                                                       

    # --- Step 1: Input validation ---
    if ($Number -lt 1) {                                    
        # If the given number is less than 1 (like 0 or negative),
        # it’s not allowed in the Collatz Conjecture.
        # The test file expects an *error* in this case.
        throw "error: Only positive numbers are allowed"    
    }                                                       

    # --- Step 2: Setup ---
    $steps = 0                                              
    # We start counting from 0 because no operations have been done yet.

    # --- Step 3: Loop until we reach 1 ---
    while ($Number -ne 1) {                                 
        # Keep repeating as long as $Number is NOT equal to 1.
        # Each loop is one “round” of the Collatz rule.

        if ($Number % 2 -eq 0) {                            
            # % is the modulo operator — it gives the remainder after dividing by 2.
            # If remainder is 0, the number is even.
            # Rule: If even → divide it by 2.
            $Number /= 2                                    
            # "/=" means divide $Number by 2 and store the result back in $Number.

        } else {                                            
            # If the number is NOT even, then it is odd.
            # Rule: If odd → multiply by 3 and add 1.
            $Number = $Number * 3 + 1                       
        }                                                   

        $steps++                                            
        # After every change to $Number, we have completed one step.
        # Increase $steps by 1 to keep track.
    }                                                       

    # --- Step 4: End result ---
    return $steps                                           
    # When the while loop ends, $Number has finally reached 1.
    # Return the total number of steps it took to get here.
}                                                           
