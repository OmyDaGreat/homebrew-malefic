class Kommit < Formula
  desc "A conventional commit generator made with Kotlin!"
  homepage "https://github.com/OmyDaGreat/Kommit"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.1/kommit-macos-arm64"
    sha256 "1d04b6e316fa7af608560962493947b61bf73f9b8de568e75fd2900e7d227fe6"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.1/kommit-macos-x64"
    sha256 "aafa22e3fe08acdab9ae480c128df09b7f89f8a0a2ab8f29ea5921be5ae2323a"
  elsif OS.linux?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.1/kommit-linux-x64"
    sha256 "ed1e10b644342368241a3b69ebc60f101a31da93f74e30c82e108c4d0b441b8e"
  end

  def install
    bin.install Dir["*"] => "kommit"
  end

  test do
    system "#{bin}/kommit", "--help"
  end
end
