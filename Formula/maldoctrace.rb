class Maldoctrace < Formula
  desc "Static analyzer and safe VBA emulator for malicious Office documents"
  homepage "https://github.com/debugactiveprocess/MaldocTrace"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/debugactiveprocess/MaldocTrace/releases/download/v0.6.0/maldocTrace_0.6.0_darwin_arm64.tar.gz"
      sha256 "064fe4f6c6eb09f58adc867c82340f5bba764ab77418e65ba3cb96903314c4c9"
    end
    on_intel do
      url "https://github.com/debugactiveprocess/MaldocTrace/releases/download/v0.6.0/maldocTrace_0.6.0_darwin_amd64.tar.gz"
      sha256 "9b7567df8813f50ad177c91f73de5d8a6cc4e0565425c16dcd1858639bb6b44d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/debugactiveprocess/MaldocTrace/releases/download/v0.6.0/maldocTrace_0.6.0_linux_arm64.tar.gz"
      sha256 "4925f17aeb2aeb6df40e0fa252904bcccf2d47088f69a75d6c661966d0e71b34"
    end
    on_intel do
      url "https://github.com/debugactiveprocess/MaldocTrace/releases/download/v0.6.0/maldocTrace_0.6.0_linux_amd64.tar.gz"
      sha256 "b760942d79911fe9697310e48916e6ccee965077e1aea913233dbbcec260a969"
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
