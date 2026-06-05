cask "shotfile" do
  version "1.6.2"
  sha256 "d25044aa2ccd8833776357961f2cb7313d7a1fd5ef7e57cdadc71310f602b232"

  url "https://github.com/z4rd0z1/homebrew-shotfile/releases/download/v#{version}/ShotFile-#{version}-arm64-mac.zip"

  name "ShotFile"
  desc "Name your screenshot, move it to a folder"
  homepage "https://shotfile.vercel.app/"

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
