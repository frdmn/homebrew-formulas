class DevSearch < Formula
  desc "Dead simple project search tool written in Bash with fuzzy support"
  homepage "https://github.com/frdmn/dev-search"
  url "https://github.com/frdmn/dev-search/archive/1.2.3.tar.gz"
  version "1.2.3"
  sha256 "482767757ede7e8695ff808d7f5ecda08cb4704bc10a18c1aca52c4f76fcd010"

  def install
    ENV.deparallelize
    prefix.install "dev"
    bash_completion.install "completion/bash" => "dev"
    zsh_completion.install "completion/zsh" => "dev"
  end

  def caveats; <<-EOS.undent
    To activate dev-search you need to add the following into your shell profiles:

    # if you use Bash shell
    $ echo ". /usr/local/opt/dev-search/dev" >> ~/.bashrc

    # or if you use ZSH
    $ echo ". /usr/local/opt/dev-search/dev" >> ~/.zshrc

    You can adjust the project search path if you need to:

    $ export devsearch_projectspath="${HOME}/Dropbox/Share/Development"
    EOS
  end

  test do
    system "#{opt_prefix}/dev"
  end
end
