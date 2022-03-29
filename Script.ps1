param ([Parameter(Mandatory, ValueFromPipeline = $true)]$FN, [Parameter(Mandatory)]$OP, [Parameter()]$SN)

$solution

try {
    if ($OP -eq '+') {

        $solution =  ([long]($FN) + [long]($SN))
    
    }

    elseif ($OP -eq '-') {

        Write-Host "Calucalting: $FN$OP$SN"
        $solution = ([long]($FN) - [long]($SN))
    
    }

    elseif ($OP -eq '*') {

        Write-Host "Calucalting: $FN$OP$SN"
        $solution = ([long]($FN) * [long]($SN))
    
    }

    elseif ($OP -eq '/') {

        if ($SecondNumber -eq 0) {
            $solution = "Cannot divide by 0";
        }

        Write-Host "Calucalting: $FN$OP$SN"
        $solution = ([long]($FN) / [long]($SN))
    
    }

    elseif ($OP -eq 'V') {

        Write-Host "Calucalting: $OP$FN"
        Write-Host "When calculating square root Second Number does not matter"
        $solution = ([math]::Sqrt($FN))
    
    }
    
    else {
        $solution = "Not a valid operator"
    }
    
}
catch{
    Write-Output "An error occured"
}

return $solution