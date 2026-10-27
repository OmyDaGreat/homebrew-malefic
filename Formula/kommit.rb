class Kommit < Formula
  desc "A conventional commit generator made with Kotlin!"
  homepage "https://github.com/OmyDaGreat/Kommit"
  license "MIT"
  version "v4.3.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v4.3.0/kommit-macos-arm64"
    sha256 "e65dac49fb209e534449781a919592896bba127fe40740f92f6cf80f3670778a"
  elsif OS.linux?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v4.3.0/kommit-linux-x64"
    sha256 "17f13e7448365b68fc327d7b77955a0961f45ce40e3363d77c0705863168e86b"
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
