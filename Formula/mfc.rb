class Mfc < Formula
  desc "A multi-use general purpose terminal application!"
  homepage "https://github.com/OmyDaGreat/mfc"
  url "https://github.com/OmyDaGreat/mfc/releases/download/v0.3.5/mfc-0.3.5.zip"
  sha256 "de2746cc1484c9878cf25ae817ca6bcb9454694f45e4c053e32bcacb36b94723"
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
