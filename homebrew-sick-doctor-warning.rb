class HomebrewSickDoctorWarning < Formula
  homepage "https://github.com/frdmn/homebrew-sick-doctor-warning"
  url "https://github.com/frdmn/homebrew-sick-doctor-warning/archive/1.0.0.tar.gz"
  version "1.0.0"
  sha256 "ee0861b57b013569edca5926e9a3ae91d8ee1a54235cf39fa589eae41f07f2fa"

  depends_on "terminal-notifier"

  def install
    bin.install "homebrew-sick-doctor-warning"
  end

  def plist; <<-EOS.undent
      <?xml version="1.0" encoding="UTF-8"?>
      <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
      <plist version="1.0">
        <dict>
          <key>EnableGlobbing</key>
          <false/>
          <key>Label</key>
          <string>#{plist_name}</string>
          <key>ProgramArguments</key>
          <array>
            <string>/bin/bash</string>
            <string>#{HOMEBREW_PREFIX}/bin/homebrew-sick-doctor-warning</string>
          </array>
          <key>StandardErrorPath</key>
          <string>#{var}/log/homebrew-sick-doctor-warning.log</string>
          <key>StandardOutPath</key>
          <string>#{var}/log/homebrew-sick-doctor-warning.log</string>
          <key>RunAtLoad</key>
          <true/>
          <key>StartCalendarInterval</key>
          <array>
              <dict>
                  <key>Hour</key>
                  <integer>10</integer>
                  <key>Minute</key>
                  <integer>1</integer>
              </dict>
              <dict>
                  <key>Hour</key>
                  <integer>15</integer>
                  <key>Minute</key>
                  <integer>1</integer>
              </dict>
          </array>
        </dict>
      </plist>
      EOS
  end
end
