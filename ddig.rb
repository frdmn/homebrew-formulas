class Ddig < Formula
  desc "Simple bash script to query the actual responsible DNS server of a specific domain/hostname"
  homepage "https://github.com/frdmn/ddig"
  url "https://github.com/frdmn/ddig/archive/1.2.0.tar.gz"
  version "1.2.0"
  sha256 "2a9b08f0c49cf0ae52a61149f997802231984049aeacb6bef871b0a738a2a980"

  def install
    ENV.deparallelize
    bin.install "ddig"
  end

  test do
    system "#{opt_prefix}/ddig"
  end
end
