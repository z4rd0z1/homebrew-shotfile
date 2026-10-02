cask "shotfile" do
  version "1.1.0"
  sha256 "12de40aa79627c938c11901eac54b2f08b00265ff4f66cf73749d6b0b3eb80de"

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
