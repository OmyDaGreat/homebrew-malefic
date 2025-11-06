class Kommit < Formula
  desc "A conventional commit generator made with Kotlin!"
  homepage "https://github.com/OmyDaGreat/Kommit"
  license "MIT"
  version "v3.0.12"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.12/kommit-macos-arm64"
    sha256 "c01dfdb7e1482394aaa4c2b7ac49de016a88ac8f66d68a691a0a22f3fe3b26b7"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.12/kommit-macos-x64"
    sha256 "3bb6cb5584feac8001ac38b8d187b967c8194432ebe932fe07a90e78f3d1120e"
  elsif OS.linux?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.12/kommit-linux-x64"
    sha256 "2753158e974c8567a9663b5f0d48a38e252710da924139d69cdf6f4b1f1ec50b"
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "kommit-macos-arm64" => "kommit"
    elsif OS.mac? && Hardware::CPU.intel?
      bin.install "kommit-macos-x64" => "kommit"
    elsif OS.linux?
      bin.install "kommit-linux-x64" => "kommit"
    end
  end

  test do
    system "#{bin}/kommit", "--help"
  end
end
