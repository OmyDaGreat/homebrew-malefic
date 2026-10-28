class Kommit < Formula
  desc "A conventional commit generator made with Kotlin!"
  homepage "https://github.com/OmyDaGreat/Kommit"
  license "MIT"
  version "v5.0.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v5.0.1/kommit-macos-arm64"
    sha256 "80df451238da060f5a0fe6d847dba5ed9b1625de3d21eb3466297baa95704d69"
  elsif OS.linux?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v5.0.1/kommit-linux-x64"
    sha256 "fbaddef3d674265507c0436e2cbdc0f6e6d60a2aa1cdb08631bfe70c97953c03"
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
