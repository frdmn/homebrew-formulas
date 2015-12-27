class Ddig < Formula
  desc "Simple bash script to query the actual responsible DNS server of a specific domain/hostname"
  homepage "https://github.com/frdmn/ddig"
  url "https://github.com/frdmn/ddig/archive/1.1.0.tar.gz"
  version "1.1.0"
  sha256 "c6380cd4a2bdd2e010d47c138648f91276fba69c9ad346f883fbe37dbf381750"

  def install
    ENV.deparallelize
    bin.install "ddig"
  end

  test do
    system "#{opt_prefix}/ddig"
  end
end
