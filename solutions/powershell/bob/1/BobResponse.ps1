Function Get-BobResponse() {
    <#
    .SYNOPSIS
    Bob is a lackadaisical teenager. In conversation, his responses are very limited.
    .DESCRIPTION
    Bob is a lackadaisical teenager. In conversation, his responses are very limited.
    Bob answers 'Sure.' if you ask him a question.
    He answers 'Whoa, chill out!' if you yell at him.
    He answers 'Calm down, I know what I'm doing!' if you yell a question at him.
    He says 'Fine. Be that way!' if you address him without actually saying
    anything.
    He answers 'Whatever.' to anything else.
    
    .PARAMETER HeyBob
    The sentence you say to Bob.
    
    .EXAMPLE
    Get-BobResponse -HeyBob "Hi Bob"
    #>
    [CmdletBinding()]
    Param(
        [string]$HeyBob
    )
    $text = $HeyBob.Trim()

    if ($text -eq "") {
        return "Fine. Be that way!"
    }
    <#
    $isShouting          → This is a variable I'm creating to store the result of the shouting check.
    =                   → This assigns the result on the right-hand side into the $isShouting variable.
    ()                  → Parentheses group each condition so that PowerShell evaluates them separately and clearly.
    $text -cmatch '^[^a-z]*$'
                        → This checks if the entire text has **no lowercase letters**.
                        - '^' means start of the string
                        - '[^a-z]' means any character **except** a lowercase letter
                        - '*' means zero or more of those characters
                        - '$' means end of the string
                        So, the whole string must contain **no lowercase letters**

    -and ($text -match '[A-Z]')
                        → Also check if there’s **at least one capital letter**.
                        This prevents matching things like numbers or symbols only.

    Together:
    This means the input is shouting if it contains **no lowercase letters** AND **at least one uppercase letter**.
    #>
    $isShouting = ($text -cmatch '^[^a-z]*$') -and ($text -match '[A-Z]')
    if ($isShouting) {
        return "Whoa, chill out!"
    }

    $isQuestion = $text.EndsWith( "?")
        if ($isQuestion) {
        return "Sure."
    }

    if ($isShouting -and $isQuestion) {
        return "Calm down, I know what I'm doing!"
    }

    return "Whatever."
}
