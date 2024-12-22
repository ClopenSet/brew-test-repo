class HelloBrew < Formula
  desc "A simple program to test Homebrew tap and install"
  homepage "https://github.com/ClopenSet/brew-test-repo"
  url "https://github.com/ClopenSet/brew-test-repo/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "461a4d35e64b9c249e8bbdd402e8818e78b17de91778594ed81a73e0330333de"
  version "1.0.0"

  def install
    system "g++", "hello_brew.cpp", "-o", "hello-brew"
    bin.install "hello-brew"
  end

  test do
    system "#{bin}/hello-brew"
  end
end
