cask "shotfile" do
  version "0.9.4"
  sha256 "c847f7c6688e8a29a30d01f2eaf1af0d6ef163b7c6888fcd492c7096d110c8b9"

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
