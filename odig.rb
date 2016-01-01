class Odig < Formula
  desc "Bash script to lookup hostname and PTR record of a given IP address at a stroke"
  homepage "https://github.com/frdmn/odig"
  url "https://github.com/frdmn/odig/archive/1.0.1.tar.gz"
  version "1.0.1"
  sha256 "6b73aa33cd76276de9ca3e0b36ceefe5177cb256f522f2ec1df4f219db8f0c75"

  def install
    ENV.deparallelize
    bin.install "odig"
  end

  test do
    system "#{opt_prefix}/odig"
  end
end
