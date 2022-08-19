class GitShift < Formula
  desc "Git plugin to shift timestamps of commits"
  homepage "https://github.com/gitbits/git-shift"
  url "https://github.com/gitbits/git-shift/archive/7b65b058f9568ec68785ee3d267be9299d8d17c2.zip"
  version "1.0.1"
  sha256 "d4b9e3104648ca26b2dec83d8a01646473c04bce40b752cf7f3d637e4e7bc983"

  def install
    ENV.deparallelize
    bin.install "git-shift"
  end

  test do
    system "#{opt_prefix}/git-shift"
  end
end
