cask "shotfile" do
  version "1.2.0"
  sha256 "c2cb0df4657908d27e6fec276c42653b6feae82e197b553ccd1f3a52ee82f414"

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
