class Kommit < Formula
  desc "A conventional commit generator made with Kotlin!"
  homepage "https://github.com/OmyDaGreat/Kommit"
  license "MIT"
  version "v3.0.8"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.8/kommit-macos-arm64"
    sha256 "768a63044a76b9b5992c43e02b290e6e745bf680739db57bf5ada3c2bbf938bd"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.8/kommit-macos-x64"
    sha256 "5eabb14403d6ccc0d2e8d99d1a96a4dbc60a6fce5e857f115fcc01d530256000"
  elsif OS.linux?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.8/kommit-linux-x64"
    sha256 "270e79e35d272e49620b6e6d998f9274bc7c9134a2a2aeef24767eb3de72a240"
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
