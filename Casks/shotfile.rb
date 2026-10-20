cask "shotfile" do
  version "1.1.2"
  sha256 "63d989ea708e0993e8f2658fc569f9a14a987017a236ee0dc3816fcb5922ce83"

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
