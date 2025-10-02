cask "yt-dlp-gui" do
  version "1.1.0"
  sha256 "6e27283a15737b629544dcbde50315b7c6e9bfbf0b87ddda829c2ff78a87a872"

  url "https://github.com/ib729/yt-dlp-gui/releases/download/v#{version}/yt-dlp-gui-v#{version}.dmg"
  
  name "yt-dlp-gui"
  desc "A native SwiftUI interface for yt-dlp."
  homepage "https://github.com/ib729/yt-dlp-gui"

  app "yt-dlp-gui.app"

  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{appdir}/yt-dlp-gui.app"],
                   sudo: true
  end
end

