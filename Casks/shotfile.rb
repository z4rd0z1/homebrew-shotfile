cask "shotfile" do
  version "0.9.0"
  sha256 "8e4f823d3cdacaddc70ef7b967dcf98b98fe4bf6773e3f1c2c14a5cbde3adb68"

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
