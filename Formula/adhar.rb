# typed: false
# frozen_string_literal: true

# This file was generated for Adhar v0.1.0. Future releases update it
# automatically via GoReleaser once the Homebrew GitHub App is configured.
class Adhar < Formula
  desc "Open Foundation for Cloud-Native Platform Engineering"
  homepage "https://www.adhar.io"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adhar-io/adhar/releases/download/v0.1.0/adhar-0.1.0-darwin-arm64.tar.gz"
      sha256 "2b1cb4abfff7eb2da09780771bf15da73e5c437d5d153af0c64885872f0ea571"
    end
    if Hardware::CPU.intel?
      url "https://github.com/adhar-io/adhar/releases/download/v0.1.0/adhar-0.1.0-darwin-amd64.tar.gz"
      sha256 "c483a4ff3c79c18e0b388f463cf8cfc7169d2104625e542e2129ffac87b5a04d"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/adhar-io/adhar/releases/download/v0.1.0/adhar-0.1.0-linux-arm64.tar.gz"
      sha256 "4abbd3219f239e07edf1f58d41bd97f8f4b9b16b4b51089b39dd54e2e99243aa"
    end
    if Hardware::CPU.intel?
      url "https://github.com/adhar-io/adhar/releases/download/v0.1.0/adhar-0.1.0-linux-amd64.tar.gz"
      sha256 "2f3fdae1154be5a22bc75d6c6efba0135aac994b9671a2e919536891e143f12d"
    end
  end

  def install
    bin.install "adhar"
  end

  test do
    system "#{bin}/adhar", "version", "--short"
  end
end
