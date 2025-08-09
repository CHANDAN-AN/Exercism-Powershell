Function Invoke-CollatzConjecture() {

    [CmdletBinding()]
    Param(
        [Int64]$Number
    )
if ($Number -lt 1) {
    throw "error: Only positive numbers are allowed"
}

    }
    $steps = 0
    while ($Number -ne 1) {
        if ($Number % 2 -eq 0) {
            $Number /= 2
        } else {
            $Number = $Number * 3 + 1
        }
        $steps++
    }
    return $steps
}