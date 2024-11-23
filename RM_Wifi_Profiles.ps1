$profiles = (netsh wlan show profiles) -match '\s{2,}:\s' -replace '.*:\s', ''

foreach ($profile in $profiles) {
    netsh wlan delete profile name="$profile"
}