class Kommit < Formula
  desc "A conventional commit generator made with Kotlin!"
  homepage "https://github.com/OmyDaGreat/Kommit"
  license "MIT"
  version "v3.0.7"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.7/kommit-macos-arm64"
    sha256 "629adaf8dc9b14374b71a1dee0e7698f611605cde7dff457bec0a7e2ff07af97"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.7/kommit-macos-x64"
    sha256 "43d94eb5207b3da0313ca7553382318ed5e46468fa9e1e639c89f62138803802"
  elsif OS.linux?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.7/kommit-linux-x64"
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
