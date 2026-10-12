class Kommit < Formula
  desc "A conventional commit generator made with Kotlin!"
  homepage "https://github.com/OmyDaGreat/Kommit"
  license "MIT"
  version "v3.0.25"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.25/kommit-macos-arm64"
    sha256 "337620ede57f5cf7736042d6ecdda96214c90b7f61e62d91cb27e62811cab1f3"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.25/kommit-macos-x64"
    sha256 "bcdfbc5cc6f94c1831776f2d80581e69226cba9288c27e2db2ee45df6f2e9729"
  elsif OS.linux?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.25/kommit-linux-x64"
    sha256 "2540bc100cf74bcc1d82fcbcf3879da449997a21e54d4b71c0b9f1ad3149ef48"
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
