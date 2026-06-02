cask "shotfile" do
  version "1.5.0"
  sha256 "fb8aaa65fe733740a4dbdb307012eff7a14323ada2256fc81a34c91a177ea03b"

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
