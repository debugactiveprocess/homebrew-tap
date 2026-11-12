class Maldoctrace < Formula
  desc "Static analyzer and safe VBA emulator for malicious Office documents"
  homepage "https://github.com/debugactiveprocess/MaldocTrace"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/debugactiveprocess/MaldocTrace/releases/download/v0.3.0/maldocTrace_0.3.0_darwin_arm64.tar.gz"
      sha256 "5d23fbd5134d8bb5b5a0210d79e1214c0d6238dd0b8773262df158f95417263b"
    end
    on_intel do
      url "https://github.com/debugactiveprocess/MaldocTrace/releases/download/v0.3.0/maldocTrace_0.3.0_darwin_amd64.tar.gz"
      sha256 "54ba3a54f55b0b644f4b01149c2d8974f54915f5e8de518937de433ae85350e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/debugactiveprocess/MaldocTrace/releases/download/v0.3.0/maldocTrace_0.3.0_linux_arm64.tar.gz"
      sha256 "50b03196022121587b979177ba3c2d2cdd945377d6aedeadda229f4133251a34"
    end
    on_intel do
      url "https://github.com/debugactiveprocess/MaldocTrace/releases/download/v0.3.0/maldocTrace_0.3.0_linux_amd64.tar.gz"
      sha256 "5120b4eb30a6ad21ef795b26635290f7c482a0bbb1f62117de3fcdd0fde7753e"
    end
  end

  def install
    bin.install "maldocTrace"
    bin.install_symlink "maldocTrace" => "maldoctrace"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/maldoctrace version")
  end
end
