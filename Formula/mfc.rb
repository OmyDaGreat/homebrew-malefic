class Mfc < Formula
  desc "A multi-use general purpose terminal application!"
  homepage "https://github.com/OmyDaGreat/mfc"
  url "https://github.com/OmyDaGreat/mfc/releases/download/v0.2.4/mfc-0.2.4.zip"
  sha256 "your_zip_sha256_here"
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
