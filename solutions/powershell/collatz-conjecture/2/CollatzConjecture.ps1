function Invoke-CollatzConjecture {
    [CmdletBinding()]
    Param(
        [Int64]$Number
    )

    if ($Number -lt 1) {
        throw "error: Only positive numbers are allowed"
    }

    $steps = 0

    while ($Number -ne 1) {
        if ($Number % 2 -eq 0) {
            $Number = $Number / 2
        } else {
            $Number = 3 * $Number + 1
        }
        $steps++
    }

    return $steps
}
