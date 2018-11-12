Function Reboot-AndResume {
    Param (
        [parameter(Mandatory = $true)]
        [String]
        $Command,
        [parameter(Mandatory = $true)]
        [String]
        $Name
    )

    # need to reboot the server and rerun this script at the next action
    $reg_key = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce"

    Set-ItemProperty -Path $reg_key -Name $$Name -Value $Command
    if (Get-Command -Name Restart-Computer -ErrorAction SilentlyContinue) {
        Restart-Computer -Force
    } else {
        # PS v1 (Server 2008) doesn't have the cmdlet Restart-Computer, use el-traditional
        shutdown /r /t 0
    }
}