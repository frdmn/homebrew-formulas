class Odig < Formula
  desc "Bash script to lookup hostname and PTR record of a given IP address at a stroke"
  homepage "https://github.com/frdmn/odig"
  url "https://github.com/frdmn/odig/archive/1.0.0.tar.gz"
  version "1.0.0"
  sha256 "2134e9505802ebc167beef2a8a15b9b6060de99da6689bf917bca774842ccce0"

  def install
    ENV.deparallelize
    bin.install "odig"
  end

  test do
    system "#{opt_prefix}/odig"
  end
end
