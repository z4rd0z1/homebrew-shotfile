cask "shotfile" do
  version "1.4.2"
  sha256 "6c486bc464620bdf9aa8986ed216b1ada4009415d10107179d88477d75dba464"

  url "https://github.com/z4rd0z1/homebrew-shotfile/releases/download/v#{version}/ShotFile-#{version}-arm64-mac.zip"

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
