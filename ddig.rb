class Ddig < Formula
  desc "Simple bash script to query the actual responsible DNS server of a specific domain/hostname"
  homepage "https://github.com/frdmn/ddig"
  url "https://github.com/frdmn/ddig/archive/1.2.1.tar.gz"
  version "1.2.1"
  sha256 "d758ff98be455cac331c36e2fadfbedd6ea415f13f73e419a3922d386775874a"

  def install
    ENV.deparallelize
    bin.install "ddig"
  end

  test do
    system "#{opt_prefix}/ddig"
  end
end
