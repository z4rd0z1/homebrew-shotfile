cask "shotfile" do
  version "0.9.1"
  sha256 "80f95be3421d0f71f605a21a5b2e6a2846ee2277018f38481d2a592f6dbe19b7"

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
