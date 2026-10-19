class Kommit < Formula
  desc "A conventional commit generator made with Kotlin!"
  homepage "https://github.com/OmyDaGreat/Kommit"
  license "MIT"
  version "v4.1.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v4.1.1/kommit-macos-arm64"
    sha256 "e49f36b3b5c83dd1cc47b6ff9b3e77be821d1b6f3de5d571933f706a92c77d57"
  elsif OS.linux?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v4.1.1/kommit-linux-x64"
    sha256 "98423c5d212e53f403b9ea96288e793ad576c714ce04dcfae3cee1cdb34c72a6"
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
