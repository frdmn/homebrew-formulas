class GitShift < Formula
  desc "Git plugin to shift timestamps of commits (custom fork)"
  homepage "https://github.com/frdmn/git-shift"
  url "https://github.com/frdmn/git-shift/archive/5364ce688e782dc86eef02969f0506036303c74b.zip"
  version "1.0.0"
  sha256 "4612da81c699ca56bbb32b6c07a8acd9125d9abb4dff6ce7b5bc92a026e3492d"

  def install
    ENV.deparallelize
    bin.install "git-shift"
  end

  test do
    system "#{opt_prefix}/git-shift"
  end
end
