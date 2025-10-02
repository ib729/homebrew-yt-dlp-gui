cask "yt-dlp-gui@beta" do
  version "1.2.0-beta"
  sha256 ""

  url "https://github.com/ib729/yt-dlp-gui/releases/download/v#{version}/yt-dlp-gui-v#{version}.dmg"

  name "yt-dlp-gui"
  desc "A native SwiftUI interface for yt-dlp."
  homepage "https://github.com/ib729/yt-dlp-gui"

  depends_on formula: "yt-dlp"
  depends_on formula: "ffmpeg"

  app "yt-dlp-gui.app"

  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{appdir}/yt-dlp-gui.app"],
                   sudo: true
  end
end
