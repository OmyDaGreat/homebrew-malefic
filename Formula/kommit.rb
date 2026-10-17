class Kommit < Formula
  desc "A conventional commit generator made with Kotlin!"
  homepage "https://github.com/OmyDaGreat/Kommit"
  license "MIT"
  version "v4.1.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v4.1.0/kommit-macos-arm64"
    sha256 "14ca4d792846b754b23579652d0c746d866da474d609c4f7d5531525ece2f2e3"
  elsif OS.linux?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v4.1.0/kommit-linux-x64"
    sha256 "7734bb414d270de3ea833d9624581940fc4ea677073f0799066f1913a25bfe9e"
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "kommit-macos-arm64" => "kommit"
    elsif OS.linux?
      bin.install "kommit-linux-x64" => "kommit"
    end
  end

  test do
    system "#{bin}/kommit", "--help"
  end
end
