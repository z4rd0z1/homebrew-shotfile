cask "shotfile" do
  version "1.0.7"
  sha256 "072b6aba81096e5f165c2c646f79f8179900bdb06e9a578ff00d463da2521f25"

  url "https://github.com/z4rd0z1/homebrew-shotfile/releases/download/v#{version}/ShotFile-#{version}-arm64.dmg",
      verified: "github.com/z4rd0z1/homebrew-shotfile/"
  name "ShotFile"
  desc "Name your screenshot, move it to a folder"
  homepage "https://shotfile.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "ShotFile.app"

  zap trash: [
    "~/.shotfile",
    "~/Library/Application Support/ShotFile",
    "~/Library/Preferences/com.shotfile.app.plist",
  ]
end
