class Kommit < Formula
  desc "A conventional commit generator made with Kotlin!"
  homepage "https://github.com/OmyDaGreat/Kommit"
  license "MIT"
  version "v4.2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v4.2.0/kommit-macos-arm64"
    sha256 "9b1906212dbc0e5b870c23c49a01d05d1064c17fa2e6384c613830190e51ee91"
  elsif OS.linux?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v4.2.0/kommit-linux-x64"
    sha256 "ec563ceef457bbfafee56deaf8d4861e96dcf694b42783b82cead81bfdbfdc5a"
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
