cask "shotfile" do
  version "1.0.1"
  sha256 "8d38bbfc275a4a72e134c4aade7542e19420b2c5d536d2920ea89e8768b79c92"

  url "https://github.com/z4rd0z1/homebrew-shotfile/releases/download/v#{version}/ShotFile-#{version}-arm64.dmg"

  name "ShotFile"
  desc "Name your screenshot, move it to a folder"
  homepage "https://shotfile.app/"

  app "ShotFile.app"

  zap trash: [
    "~/Library/Application Support/ShotFile",
    "~/Library/Preferences/com.shotfile.app.plist",
    "~/.shotfile",
  ]
end
