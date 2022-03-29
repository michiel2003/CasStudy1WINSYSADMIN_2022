Describe "Test for Script.ps1" {
    Context "Testing calculations" {
        It "+ test" {
            $plus = .\Test.ps1 -FN 2 -OP + -SN 2
            Write-Host($plus)
            $plus | Should -Be 4
        }
    }
}