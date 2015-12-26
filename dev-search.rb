class DevSearch < Formula
  desc "Dead simple project search tool written in Bash with fuzzy support"
  homepage "https://github.com/frdmn/dev-search"
  url "https://github.com/frdmn/dev-search/archive/1.2.2.tar.gz"
  version "1.2.2"
  sha256 "5f7b28f3ba4fc9a6db854b9549e65d0bae93e9c0ef059fc91b157ac69b238b26"

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
