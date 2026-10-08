cask "shotfile" do
  version "1.1.1"
  sha256 "0f0b558e7017347e2756deeb3ce2219eefa3a63b357d8801f98ebfb9036ac82e"

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
