class Plannotator < Formula
  desc "AI-powered code planning and review tool"
  homepage "https://plannotator.ai"
  license "Apache-2.0"
  version "0.21.4"

  on_macos do
    on_arm do
      url "https://github.com/backnotprop/plannotator/releases/download/v0.21.4/plannotator-darwin-arm64"
      sha256 "061c7adb382ac204f407487b3d0fc49a3589b7908b86d530d896daeab7a9ef6d"
    end
    on_intel do
      url "https://github.com/backnotprop/plannotator/releases/download/v0.21.4/plannotator-darwin-x64"
      sha256 "787471ce3bb6cfff5fd922f3081e6e9647610eb187306aa235d303ae0d369d0c"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "plannotator-darwin-arm64" => "plannotator"
    else
      bin.install "plannotator-darwin-x64" => "plannotator"
    end
  end

  test do
    assert_match "plannotator", shell_output("#{bin}/plannotator --help 2>&1")
  end
end
