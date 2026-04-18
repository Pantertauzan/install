Set-ExecutionPolicy Bypass -Scope Process -Force

$apps = @(
    "Valve.Steam",
    "Discord.Discord",
    "Spotify.Spotify",
    "CPUID.HWMonitor",
    "Nvidia.GeForceExperience",
    "VideoLAN.VLC",
    "Google.Chrome"
)

foreach ($app in $apps) {
    winget install -e --id $app --accept-source-agreements --accept-package-agreements
}
Write-Host "All apps processed successfully!" -ForegroundColor Green
