class Mfc < Formula
  desc "A multi-use general purpose terminal application!"
  homepage "https://github.com/OmyDaGreat/mfc"
  url "https://github.com/OmyDaGreat/mfc/releases/download/v0.3.7/mfc-0.3.7.zip"
  sha256 "b15ae6cbb5352e50c569b45529936692e71a1205d2e870979db7eacdefbd6d7b"
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
