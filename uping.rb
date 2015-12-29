# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Uping < Formula
  desc "Ping tool that stops as soon as the host comes back online"
  homepage "https://github.com/frdmn/uping"
  url "https://github.com/frdmn/uping/archive/0.2.1.tar.gz"
  version "0.2.1"
  sha256 "0dfc21fa98ec5b8970f1c7a487776485f5569a30a3e96f927aac165de487e2b2"

  def install
    ENV.deparallelize
    bin.install "uping"
  end

  test do
    system "#{bin}/uping"
  end
end
