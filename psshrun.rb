class Psshrun < Formula
  desc "Tiny bash script to execute commands for saved host group files via parallel-ssh or pssh"
  homepage "https://github.com/frdmn/psshrun"
  url "https://github.com/frdmn/psshrun/archive/1.0.0.tar.gz"
  version "1.0.0"
  sha256 "fdc2341633e8d778241bcc6546c237956a2296d70e69b18b0e55d84426668b85"

  def install
    ENV.deparallelize
    bin.install "psshrun"
    bash_completion.install "completion/bash" => "psshrun"
    zsh_completion.install "completion/zsh" => "psshrun"
  end

  def caveats; <<-EOS.undent
    You can adjust the configuration search path if you need to:

    $ export psshrun_configpath="${HOME}/.pssh"
    EOS
  end

  test do
    system "#{bin}/psshrun"
  end
end
