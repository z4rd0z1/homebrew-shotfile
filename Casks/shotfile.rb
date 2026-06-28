cask "shotfile" do
  version "1.0.5"
  sha256 "15cd36acfa6792f1a2db00ab2645accbc8b952121c4364fa9ef67b9c45f2638b"

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
