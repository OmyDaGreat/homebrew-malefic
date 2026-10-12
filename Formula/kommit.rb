class Kommit < Formula
  desc "A conventional commit generator made with Kotlin!"
  homepage "https://github.com/OmyDaGreat/Kommit"
  license "MIT"
  version "v3.0.22"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.22/kommit-macos-arm64"
    sha256 "47db41612687668249bc702c6c4d20de0b2b2b90b73537a1f0e6e22c0937b244"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.22/kommit-macos-x64"
    sha256 "701cf476cb7e2a62f2e5443a86a590899f42a034011e189be8d58d390cb57c14"
  elsif OS.linux?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.22/kommit-linux-x64"
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
