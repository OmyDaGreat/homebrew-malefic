class Kommit < Formula
  desc "A conventional commit generator made with Kotlin!"
  homepage "https://github.com/OmyDaGreat/Kommit"
  license "MIT"
  version "v3.0.6"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.6/kommit-macos-arm64"
    sha256 "467e35f0f53b715626645a06be82c42c9792bb00e59b78031356f550675c0ee4"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.6/kommit-macos-x64"
    sha256 "d7016a8715c9195f46ba5ac15a71591b01618184a942ab80f6eb7f108af47204"
  elsif OS.linux?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.6/kommit-linux-x64"
    sha256 "a51a9032122b30abb75c2b950d6e18aa5914ca9dc7c810f3378d123b7a0ac5e5"
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
