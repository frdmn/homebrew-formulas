class Girahelper < Formula
  desc "CLI script to control a Gira home server"
  homepage "https://github.com/frdmn/GiraHelper"
  url "https://github.com/frdmn/GiraHelper/archive/1.0.3.tar.gz"
  version "1.0.3"
  sha256 "20fd6eeb68b363561dd1913d87be0809947037b9a3c26de33115add2367b1a4f"

  depends_on "terminal-notifier"

  def install
    ENV.deparallelize
    prefix.install %w{gira.json lib}
    bin.install "gira"
  end

  def caveats; <<-EOS.undent
    Make sure to copy the default configuration file into your home folder:

    $ cp /usr/local/opt/girahelper/gira.json ~/.gira.json
    EOS
  end

  test do
    system "#{opt_prefix}/gira"
  end
end
