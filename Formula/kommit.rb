class Kommit < Formula
  desc "A conventional commit generator made with Kotlin!"
  homepage "https://github.com/OmyDaGreat/Kommit"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.2/kommit-macos-v3.0.2"
    sha256 "1d04b6e316fa7af608560962493947b61bf73f9b8de568e75fd2900e7d227fe6"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.2/kommit-macos-v3.0.2"
    sha256 "2fd03b3dacba03ec7df1991588503da9be657736acfea0b9a31d3c7624c63772"
  elsif OS.linux?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.2/kommit-linux-v3.0.2"
    sha256 "ed1e10b644342368241a3b69ebc60f101a31da93f74e30c82e108c4d0b441b8e"
  end

  def install
    bin.install Dir["*"] => "kommit"
  end

  test do
    system "#{bin}/kommit", "--help"
  end
end
