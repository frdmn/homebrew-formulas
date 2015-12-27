class Girahelper < Formula
  desc "Bash script to control a Gira home server"
  homepage "https://github.com/frdmn/GiraHelper"
  url "https://github.com/frdmn/GiraHelper/archive/1.0.0.tar.gz"
  version "1.0.0"
  sha256 "5e55e292dda51328ed98a285413346441fe2695396d9b2a1db5455a69a1b9bbf"

  depends_on "terminal-notifier"

  def install
    ENV.deparallelize
    prefix.install %w{gira.conf lib}
    bin.install "gira"
  end

  def caveats; <<-EOS.undent
    Make sure to copy the default configuration file into your home folder:

    $ cp /usr/local/opt/girahelper/gira.conf ~/.gira.conf
    EOS
  end

  test do
    system "#{opt_prefix}/gira"
  end
end
