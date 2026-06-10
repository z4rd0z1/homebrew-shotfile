cask "shotfile" do
  version "0.9.3"
  sha256 "ac406110cbb7ce98043a4cbd8c8bee988210ea5075f8dc3a584cef69569afce1"

  url "https://github.com/z4rd0z1/homebrew-shotfile/releases/download/v#{version}/ShotFile-#{version}-arm64.dmg"

  name "ShotFile"
  desc "Name your screenshot, move it to a folder"
  homepage "https://shotfile.app/"

  app "ShotFile.app"

  zap trash: [
    "~/Library/Application Support/shotfile",
    "~/Library/Preferences/com.shotfile.app.plist",
  ]
end
