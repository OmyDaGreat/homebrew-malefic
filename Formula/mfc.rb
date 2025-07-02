class Mfc < Formula
  desc "A multi-use general purpose terminal application!"
  homepage "https://github.com/OmyDaGreat/mfc"
  url "https://github.com/OmyDaGreat/mfc/releases/download/v0.3.6/mfc-0.3.6.zip"
  sha256 "01c2ddf7a03c984a1feaf5ce5ab5948a7b04447431239b5400c76ebd1fa2b2e3"
  license "MIT"

  def install
    libexec.install "mfc.jar"
    (bin/"mfc").write <<~EOS
      #!/bin/bash
      exec java -jar "#{libexec}/mfc.jar" "$@"
    EOS
    chmod 0555, bin/"mfc"
  end

  def caveats
    <<~EOS
      mfc requires Java 17 or newer.
      You can install OpenJDK 17 with:
        brew install openjdk@17
      If you have multiple JDKs, make sure your JAVA_HOME points to a compatible JDK.
    EOS
  end

  test do
    system "#{bin}/mfc", "--help"
  end
end
