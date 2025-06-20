class Mfc < Formula
  desc "A multi-use general purpose terminal application!"
  homepage "https://github.com/OmyDaGreat/mfc"
  url "https://github.com/OmyDaGreat/mfc/releases/download/v0.2.8/mfc-0.2.8.zip"
  sha256 "a80d095a9764f0cda751f0fb2f88c83b11175698d6446ddd73d63bc1bd6e5231"
  license "MIT"

  depends_on "openjdk"

  def install
    libexec.install "mfc.jar"
    (bin/"mfc").write <<~EOS
      #!/bin/bash
      exec java -jar #{libexec}/mfc.jar "$@"
    EOS
    chmod 0555, bin/"mfc"
  end

  test do
    system "#{bin}/mfc", "--help"
  end
end
