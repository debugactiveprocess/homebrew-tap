class Maldoctrace < Formula
  desc "Static analyzer and safe VBA emulator for malicious Office documents"
  homepage "https://github.com/debugactiveprocess/MaldocTrace"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/debugactiveprocess/MaldocTrace/releases/download/v0.5.0/maldocTrace_0.5.0_darwin_arm64.tar.gz"
      sha256 "172b7b7109861e3bf8a62a12f5eba0b51ad241598a7976a6a5f5f438a6e10367"
    end
    on_intel do
      url "https://github.com/debugactiveprocess/MaldocTrace/releases/download/v0.5.0/maldocTrace_0.5.0_darwin_amd64.tar.gz"
      sha256 "aa4d85e62a08a5b6dd2b494f9de3dad76e4941eecfb1211ab29622626fd84b93"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/debugactiveprocess/MaldocTrace/releases/download/v0.5.0/maldocTrace_0.5.0_linux_arm64.tar.gz"
      sha256 "1265f0c4b01f062f6e979d8d960f0c04f8eb9bf5cd3271346c3da40daee188d1"
    end
    on_intel do
      url "https://github.com/debugactiveprocess/MaldocTrace/releases/download/v0.5.0/maldocTrace_0.5.0_linux_amd64.tar.gz"
      sha256 "46b90c1498af73456280c8d85a67b9bcc63e3b937e610cd1e9dfccf210bc8d6d"
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
