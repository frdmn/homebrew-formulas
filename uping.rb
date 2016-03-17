class Uping < Formula
  desc "Ping tool that stops as soon as the host comes back online"
  homepage "https://github.com/frdmn/uping"
  url "https://github.com/frdmn/uping/archive/0.2.2.tar.gz"
  version "0.2.2"
  sha256 "776bbd1fceceee36ea3611d8258e53edfbe71751ae5690a523fdf9b9fdef7338"

  def install
    ENV.deparallelize
    bin.install "uping"
  end

  test do
    system "#{bin}/uping"
  end
end
