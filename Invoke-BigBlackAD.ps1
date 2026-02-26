#Requires -Version 3.0

<#
.SYNOPSIS
    Summons the legendary AD specialist - Big Black.

.DESCRIPTION
    When your Active Directory pentest hits a wall, there's only one man for the job.
    Invoke-BigBlackAD summons Big Black to save the day.

.EXAMPLE
    IEX (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/ChickenLoner/Invoke-BigBlackAD/main/Invoke-BigBlackAD.ps1')
    Invoke-BigBlackAD

.NOTES
    Author  : Your Team
    Version : 1.0
    Warning : Side effects may include your AD problems mysteriously disappearing.
#>

function Invoke-BigBlackAD {
    [CmdletBinding()]
    param()

    $Banner = @"

    ██████╗ ██╗ ██████╗     ██████╗ ██╗      █████╗  ██████╗██╗  ██╗
    ██╔══██╗██║██╔════╝     ██╔══██╗██║     ██╔══██╗██╔════╝██║ ██╔╝
    ██████╔╝██║██║  ███╗    ██████╔╝██║     ███████║██║     █████╔╝ 
    ██╔══██╗██║██║   ██║    ██╔══██╗██║     ██╔══██║██║     ██╔═██╗ 
    ██████╔╝██║╚██████╔╝    ██████╔╝███████╗██║  ██║╚██████╗██║  ██╗
    ╚═════╝ ╚═╝ ╚═════╝     ╚═════╝ ╚══════╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝

             ╔══════════════════════════════════════════════╗
             ║   [*] INVOKING THE AD WHISPERER...           ║
             ║   [*] Summoning Big Black from the shadows   ║
             ║   [*] Domain Controllers trembling...        ║
             ║   [*] Kerberos tickets bowing in respect...  ║
             ╚══════════════════════════════════════════════╝
"@

    Write-Host $Banner -ForegroundColor Cyan

    Write-Host "`n[!] CRITICAL AD ISSUE DETECTED" -ForegroundColor Red
    Write-Host "[*] Standard enumeration tools have FAILED." -ForegroundColor Yellow
    Write-Host "[*] BloodHound confused. SharpHound crying. PowerView shaking." -ForegroundColor Yellow
    Write-Host "[*] There is only ONE solution..." -ForegroundColor Green

    Start-Sleep -Seconds 2

    Write-Host "`n[>>>] DEPLOYING BIG BLACK..." -ForegroundColor Magenta
    Start-Sleep -Seconds 1
    Write-Host "[>>>] Loading elite AD knowledge base..." -ForegroundColor Magenta
    Start-Sleep -Seconds 1
    Write-Host "[>>>] Bypassing all defenses with pure skill..." -ForegroundColor Magenta
    Start-Sleep -Seconds 1

    Write-Host "`n╔══════════════════════════════════════════════════════════╗" -ForegroundColor Green
    Write-Host "║                                                          ║" -ForegroundColor Green
    Write-Host "║   Big Black has been SUMMONED successfully!              ║" -ForegroundColor Green
    Write-Host "║                                                          ║" -ForegroundColor Green
    Write-Host "║   Contact him NOW before the Domain Admin escapes:      ║" -ForegroundColor Green
    Write-Host "║   >> https://www.facebook.com/sabastian.fhantomhive     ║" -ForegroundColor Green
    Write-Host "║                                                          ║" -ForegroundColor Green
    Write-Host "║   Tell him: 'I need AD help. PowerView sent me.'        ║" -ForegroundColor Green
    Write-Host "╚══════════════════════════════════════════════════════════╝" -ForegroundColor Green

    # Open his Facebook profile
    Start-Process "https://www.facebook.com/sabastian.fhantomhive"

    Write-Host "`n[+] Facebook profile opened. Go ask Big Black for help!" -ForegroundColor Cyan
    Write-Host "[+] He will have you owning that domain in no time. ;)`n" -ForegroundColor Cyan
}

# Auto-run when dot-sourced or IEX'd directly
Invoke-BigBlackAD
