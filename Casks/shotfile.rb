cask "shotfile" do
  version "1.1.1"
  sha256 "c30ede108942190562db9112343d2f5a2a10e41d0b30498651d6057935958dc6"

  url "https://github.com/z4rd0z1/shotfile/releases/download/v#{version}/ShotFile-#{version}-arm64-mac.zip"

  name "ShotFile"
  desc "Name your screenshot, move it to a folder"
  homepage "https://shotfile-website.vercel.app/"

  app "ShotFile.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/ShotFile.app"]
  end

  zap trash: [
    "~/Library/Application Support/shotfile",
    "~/Library/Preferences/com.shotfile.app.plist",
  ]
end
