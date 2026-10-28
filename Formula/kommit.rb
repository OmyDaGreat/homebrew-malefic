class Kommit < Formula
  desc "A conventional commit generator made with Kotlin!"
  homepage "https://github.com/OmyDaGreat/Kommit"
  license "MIT"
  version "v5.0.2"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v5.0.2/kommit-macos-arm64"
    sha256 "28ebcbf747a9cce74bce4d5413f908abcdc86e4e188efbd7abdf1108ac729c9a"
  elsif OS.linux?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v5.0.2/kommit-linux-x64"
    sha256 "56a4473b92b316c810c3a5631abfdd56e7213f11b8eeb5b6d39674831483455a"
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
