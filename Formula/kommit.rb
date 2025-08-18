class Kommit < Formula
  desc "A conventional commit generator made with Kotlin!"
  homepage "https://github.com/OmyDaGreat/Kommit"
  license "MIT"
  version "v3.0.4"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.4/kommit-macos-arm64"
    sha256 "d09c9dec4f8fdea17cc731507f039be9a808a2eff01698c7a61957d260d2b6cd"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.4/kommit-macos-x64"
    sha256 "d7016a8715c9195f46ba5ac15a71591b01618184a942ab80f6eb7f108af47204"
  elsif OS.linux?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.4/kommit-linux-x64"
    sha256 "a51a9032122b30abb75c2b950d6e18aa5914ca9dc7c810f3378d123b7a0ac5e5"
  end

  def install
    bin.install Dir["*"] => "kommit"
  end

  test do
    system "#{bin}/kommit", "--help"
  end
end
