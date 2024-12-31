#    Hardware Collector - Information & IDs
#    Copyright (C) 2024 Noverse 
#
#    This program is proprietary software: you may not copy, redistribute, or modify
#    it in any way without prior written permission from Noverse.
#
#    Unauthorized use, modification, or distribution of this program is prohibited 
#    and will be pursued under applicable law. This software is provided "as is," 
#    without warranty of any kind, express or implied, including but not limited to 
#    the warranties of merchantability, fitness for a particular purpose, and 
#    non-infringement.
#
#    For permissions or inquiries, contact: https://discord.gg/E2ybG4j9jU
#
#    Made by Noverse - https://discord.gg/E2ybG4j9jU | https://discord.gg/noverse

$NV = @"
# Created by Noxi-Hu! - Copyright (C) 2024 Noverse
"@

sv -Scope Global -Name "ErrorActionPreference" -Value "SilentlyContinue"
$Host.UI.RawUI.BackgroundColor = "Black"
$host.ui.RawUI.WindowTitle = "Noxi's HW Collector"
clear

function bannercyan {
clear
echo ""
echo ""
Write-Host -ForegroundColor DarkBlue "              ░░░     ░░░   ░░░░░░░░░░░   ░░░     ░░░   ░░░░░░░░░░   ░░░░░░░░░░    ░░░░░░░░░░   ░░░░░░░░░░"
Write-Host -ForegroundColor DarkBlue "              ░░░░    ░░░   ░░░     ░░░   ░░░     ░░░   ░░░          ░░░     ░░░   ░░░          ░░░"
Write-Host -ForegroundColor Blue     "              ▒▒▒▒▒   ░▒▒   ▒░░     ░░▒   ▒░░     ░░▒   ░░░          ▒░░     ▒▒░   ░░░          ░░░"
Write-Host -ForegroundColor Blue     "              ▒▒▒ ▒▒▒ ▒▒▒   ▒▒░     ░▒▒   ▒▒░     ░▒▒   ▒▒▒▒▒▒▒▒     ▒▒▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒▒▒▒▒   ▒▒▒▒▒▒▒▒"
Write-Host -ForegroundColor Blue     "              ▒▒▒   ▒▒▒▒▒   ▒▒▒     ▒▒▒    ▒▒▒   ▒▒▒    ▒▒▒          ▒▓▓     ▓▓▒          ▒▒▒   ▒▒▒"
Write-Host -ForegroundColor DarkCyan "              ▒▓▓    ▓▓▓▒   ▓▓▓     ▓▓▓     ▒▓▓ ▓▓▒     ▓▓▓          ▓▓▓     ▓▓▓          ▓▓▓   ▓▓▓"
Write-Host -ForegroundColor DarkCyan "              ▓▓▓     ▓▓▓   ▓▓▓▓▓▓▓▓▓▓▓       ▓▓▓       ▓▓▓▓▓▓▓▓▓▓   ▓▓▓     ▓▓▓   ▓▓▓▓▓▓▓▓▓▓   ▓▓▓▓▓▓▓▓▓▓"
echo ""
Write-Host                            "‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗" -ForegroundColor DarkGray
echo ""
echo ""}

function nvmain {
    bannercyan
    Write-Host " You'll see the available " -NoNewline;Write-Host "IDs " -NoNewline -ForegroundColor Green;Write-Host "& " -NoNewline;Write-Host "infos" -NoNewline -ForegroundColor Green;Write-Host " of the selected number."
    echo ""
    Write-Host " Enter your choice:"
    Write-Host ""
    Write-Host " [" -NoNewline
    Write-Host "1" -foregroundcolor blue -NoNewline
    Write-Host "] BIOS"
    Write-Host " [" -NoNewline
    Write-Host "2" -foregroundcolor blue -NoNewline
    Write-Host "] Motherboard"
    Write-Host " [" -NoNewline
    Write-Host "3" -foregroundcolor blue -NoNewline
    Write-Host "] System"
    Write-Host " [" -NoNewline
    Write-Host "4" -foregroundcolor blue -NoNewline
    Write-Host "] CPU"
    Write-Host " [" -NoNewline
    Write-Host "5" -foregroundcolor blue -NoNewline
    Write-Host "] GPU"
    Write-Host " [" -NoNewline
    Write-Host "6" -foregroundcolor blue -NoNewline
    Write-Host "] RAM"
    Write-Host " [" -NoNewline
    Write-Host "7" -foregroundcolor blue -NoNewline
    Write-Host "] Drive"
    Write-Host " [" -NoNewline
    Write-Host "8" -foregroundcolor blue -NoNewline
    Write-Host "] Network"
    Write-Host " [" -NoNewline
    Write-Host "9" -foregroundcolor blue -NoNewline
    Write-Host "] Security"
    Write-Host " [" -NoNewline
    Write-Host "10" -foregroundcolor blue -NoNewline
    Write-Host "] Operating System"
    Write-Host " [" -NoNewline
    Write-Host "11" -foregroundcolor blue -NoNewline
    Write-Host "] Exit" 
    Write-Host ""
    Write-Host " >> " -foregroundcolor blue -NoNewline
    $NoverseCH = Read-Host
    if ($NV -notmatch '\!\*') {$null = $null} else {exit}
    switch ($NoverseCH) {"1" {nvbios};"2" {nvmobo};"3" {nvsys};"4" {nvcpu};"5" {nvgpu};"6" {nvram};"7" {nvdrive};"8" {nvnet};"9" {nvsec};"10" {nvos};"11" {nvquit}
        default {
            Write-Host""
            Write-Host " Invalid choice" -ForegroundColor Yellow
            Start-Sleep -Seconds 1
            nvmain
        }
    }
}
function nvbios {
    bannercyan
    if ($NV -notmatch '\!\*') {$null=$null}else{exit}
    Write-Host " BIOS UUID"-NoNewline
    Write-Host " >>" -ForegroundColor DarkGray -NoNewline
    $BIOSUUID = (Get-CimInstance -ClassName Win32_ComputerSystemProduct).UUID
    Write-Host " $BIOSUUID" -foregroundcolor blue

    Write-Host " BIOS Version"-NoNewline
    Write-Host " >>" -ForegroundColor DarkGray -NoNewline
    $BiosVersion = (Get-CimInstance -ClassName Win32_BIOS).SMBIOSBIOSVersion
    Write-Host " $BiosVersion" -foregroundcolor blue

    Write-Host " BIOS Manufacturer" -NoNewline
    Write-Host " >>" -ForegroundColor DarkGray -NoNewline
    $BIOSManufacturer = (Get-CimInstance -ClassName Win32_BIOS).Manufacturer
    Write-Host " $BIOSManufacturer" -foregroundcolor blue
    echo ""
    Write-Host " Press any key to get back" -ForegroundColor Yellow
    [System.Console]::ReadKey() > $null
    nvmain
}

function nvmobo {
    bannercyan
    if ($NV -notmatch '\!\*') {$null=$null}else{exit}
    Write-Host " Motherboard Serial"-NoNewline
    Write-Host " >>" -ForegroundColor DarkGray -NoNewline
    $MotherboardSerial = (Get-CimInstance -ClassName Win32_BaseBoard).SerialNumber
    Write-Host " $MotherboardSerial" -foregroundcolor blue

    Write-Host " Motherboard Model" -NoNewline
    Write-Host " >>" -ForegroundColor DarkGray -NoNewline
    $MotherboardModel = (Get-CimInstance -ClassName Win32_BaseBoard).Product
    Write-Host " $MotherboardModel" -foregroundcolor blue

    Write-Host " Motherboard Manufacturer" -NoNewline
    Write-Host " >>" -ForegroundColor DarkGray -NoNewline
    $MotherboardManufacturer = (Get-CimInstance -ClassName Win32_BaseBoard).Manufacturer
    Write-Host " $MotherboardManufacturer" -foregroundcolor blue
    echo ""
    Write-Host " Press any key to get back" -ForegroundColor Yellow
    [System.Console]::ReadKey() > $null
    nvmain
}

function nvsys {
    bannercyan
    if ($NV -notmatch '\!\*') {$null=$null}else{exit}
    Write-Host " System Manufacturer" -NoNewline
    Write-Host " >>" -ForegroundColor DarkGray -NoNewline
    $SystemManufacturer = (Get-CimInstance -ClassName Win32_ComputerSystem).Manufacturer
    Write-Host " $SystemManufacturer" -foregroundcolor blue

    Write-Host " System Model" -NoNewline
    Write-Host " >>" -ForegroundColor DarkGray -NoNewline
    $SystemModel = (Get-CimInstance -ClassName Win32_ComputerSystem).Model
    Write-Host " $SystemModel" -foregroundcolor blue

    Write-Host " Username" -NoNewline
    Write-Host " >>" -ForegroundColor DarkGray -NoNewline
    $Username = [System.Security.Principal.WindowsIdentity]::GetCurrent().Name
    Write-Host " $Username" -foregroundcolor blue

    Write-Host " Timezone" -NoNewline
    Write-Host " >>" -ForegroundColor DarkGray -NoNewline
    $Timezone = (Get-TimeZone).DisplayName
    Write-Host " $Timezone" -foregroundcolor blue
    echo ""
    Write-Host " Press any key to get back" -ForegroundColor Yellow
    [System.Console]::ReadKey() > $null
    nvmain
}

function nvcpu {
    bannercyan
    if ($NV -notmatch '\!\*') {$null=$null}else{exit}
    Write-Host " CPU ID" -NoNewline
    Write-Host " >>" -ForegroundColor DarkGray -NoNewline
    $CPUID = (Get-CimInstance -ClassName Win32_Processor).ProcessorId
    Write-Host " $CPUID" -foregroundcolor blue

    Write-Host " Processor Name" -NoNewline
    Write-Host " >>" -ForegroundColor DarkGray -NoNewline
    $ProcessorName = (Get-CimInstance -ClassName Win32_Processor).Name
    Write-Host " $ProcessorName" -foregroundcolor blue
    echo ""
    Write-Host " Press any key to get back" -ForegroundColor Yellow
    [System.Console]::ReadKey() > $null
    nvmain
}

function nvgpu {
    bannercyan
    if ($NV -notmatch '\!\*') {$null=$null}else{exit}
    Write-Host " GPU Model" -NoNewline
    Write-Host " >>" -ForegroundColor DarkGray -NoNewline
    $GPUModel = (Get-CimInstance -ClassName Win32_VideoController).Name
    Write-Host " $GPUModel" -foregroundcolor blue

    Write-Host " GPU Driver Version" -NoNewline
    Write-Host " >>" -ForegroundColor DarkGray -NoNewline
    $GpuDriverVersion = (Get-CimInstance -ClassName Win32_VideoController).DriverVersion
    Write-Host " $GpuDriverVersion" -foregroundcolor blue
    echo ""
    Write-Host " Press any key to get back" -ForegroundColor Yellow
    [System.Console]::ReadKey() > $null
    nvmain
}

function nvram {
    bannercyan
    if ($NV -notmatch '\!\*') {$null=$null}else{exit}
    Write-Host " RAM Capacity" -NoNewline
    Write-Host " >>" -ForegroundColor DarkGray -NoNewline
    $RAMCapacity = [math]::round((Get-CimInstance -ClassName Win32_PhysicalMemory | measure -Property Capacity -Sum).Sum / 1GB, 2)
    Write-Host " $RAMCapacity GB" -foregroundcolor blue

    Write-Host " RAM Serial Number" -NoNewline
    Write-Host " >>" -ForegroundColor DarkGray -NoNewline
    $RAMSerial = (Get-CimInstance -ClassName Win32_PhysicalMemory | select -First 1).SerialNumber
    Write-Host " $RAMSerial" -foregroundcolor blue
    echo ""
    Write-Host " Press any key to get back" -ForegroundColor Yellow
    [System.Console]::ReadKey() > $null
    nvmain
}

function nvdrive {
    bannercyan
    if ($NV -notmatch '\!\*') {$null=$null}else{exit}
    Write-Host " Drive Serial" -NoNewline
    Write-Host " >>" -ForegroundColor DarkGray -NoNewline
    $DriveSerial = (Get-CimInstance -ClassName Win32_PhysicalMedia | ? { $_.Tag -eq '\\.\PHYSICALDRIVE0' }).SerialNumber.Trim()
    Write-Host " $DriveSerial" -foregroundcolor blue

    Write-Host " Drive Model" -NoNewline
    Write-Host " >>" -ForegroundColor DarkGray -NoNewline
    $DriveModel = (Get-CimInstance -ClassName Win32_DiskDrive | ? { $_.DeviceID -eq '\\.\PHYSICALDRIVE0' }).Model
    Write-Host " $DriveModel" -foregroundcolor blue
    echo ""
    Write-Host " Press any key to get back" -ForegroundColor Yellow
    [System.Console]::ReadKey() > $null
    nvmain
}

function nvnet {
    bannercyan
    if ($NV -notmatch '\!\*') {$null=$null}else{exit}
    Write-Host " MAC Address" -NoNewline
    Write-Host " >>" -ForegroundColor DarkGray -NoNewline
    $MACAddress = (Get-CimInstance -ClassName Win32_NetworkAdapterConfiguration | ? { $_.IPEnabled -eq $true }).MACAddress
    Write-Host " $MACAddress" -foregroundcolor blue
    echo ""
    Write-Host " Press any key to get back" -ForegroundColor Yellow
    [System.Console]::ReadKey() > $null
    nvmain
}

function nvsec {
    bannercyan
    if ($NV -notmatch '\!\*') {$null=$null}else{exit}
    Write-Host " TPM Manufacturer ID" -NoNewline
    Write-Host " >>" -ForegroundColor DarkGray -NoNewline
    $TPMManufacturer = (Get-CimInstance -Namespace "Root\CIMv2\Security\MicrosoftTpm" -ClassName Win32_Tpm | select -ExpandProperty ManufacturerID) -join ""
    Write-Host " $TPMManufacturer" -foregroundcolor blue
    echo ""
    Write-Host " Press any key to get back" -ForegroundColor Yellow
    [System.Console]::ReadKey() > $null
    nvmain
}

function nvos {
    bannercyan
    if ($NV -notmatch '\!\*') {$null=$null}else{exit}
    Write-Host " Operating System" -NoNewline
    Write-Host " >>" -ForegroundColor DarkGray -NoNewline
    $OperatingSystem = (Get-CimInstance -ClassName Win32_OperatingSystem).Caption
    Write-Host " $OperatingSystem" -foregroundcolor blue

    Write-Host " OS Architecture" -NoNewline
    Write-Host " >>" -ForegroundColor DarkGray -NoNewline
    $OSArchitecture = (Get-CimInstance -ClassName Win32_OperatingSystem).OSArchitecture
    Write-Host " $OSArchitecture" -foregroundcolor blue

    Write-Host " OS Version" -NoNewline
    Write-Host " >>" -ForegroundColor DarkGray -NoNewline
    $OSVersion = (Get-CimInstance -ClassName Win32_OperatingSystem).Version
    Write-Host " $OSVersion" -foregroundcolor blue
    echo ""
    Write-Host " Press any key to get back" -ForegroundColor Yellow
    [System.Console]::ReadKey() > $null
    nvmain
}

function nvquit {
    bannercyan
    if ($NV -notmatch '\!\*') {$null=$null}else{exit}
    Write-Host " Script aborted by user, exiting" -ForegroundColor Yellow
    sleep -Seconds 1
    exit
}
nvmain