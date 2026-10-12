class Kommit < Formula
  desc "A conventional commit generator made with Kotlin!"
  homepage "https://github.com/OmyDaGreat/Kommit"
  license "MIT"
  version "v4.0.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v4.0.0/kommit-macos-arm64"
    sha256 "e53040a12da832410bbb6304d6c3dbab4df715bb89104da91862ae69f0c7449a"
  elsif OS.linux?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v4.0.0/kommit-linux-x64"
    sha256 "8c6513d0c934435a281bf7acbde2adba064445b486b8ba3d84fadfef2c2d6b52"
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
