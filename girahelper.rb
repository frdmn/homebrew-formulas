class Girahelper < Formula
  desc "Bash script to control a Gira home server"
  homepage "https://github.com/frdmn/GiraHelper"
  url "https://github.com/frdmn/GiraHelper/archive/1.0.2.tar.gz"
  version "1.0.2"
  sha256 "fdef756b2c7eab0f19620210b2cfd1b1494016c0afa687b5db5de5ab044d39c8"

  depends_on "terminal-notifier"

  def install
    ENV.deparallelize
    prefix.install %w{gira.json lib}
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
