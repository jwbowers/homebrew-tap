# typed: false
# frozen_string_literal: true

# This file was generated manually. AUTO-UPDATE with goreleaser when possible.

class AwsJupyter < Formula
  desc "CLI tool for launching Jupyter Lab instances on AWS EC2 Graviton processors"
  homepage "https://github.com/scttfrdmn/aws-jupyter"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/scttfrdmn/aws-jupyter/releases/download/v0.3.0/aws-jupyter_0.3.0_darwin_amd64.tar.gz"
      sha256 "cc9c9b1aaad4ad9a147541d8d3d24a2ce009f2f4592630d485ca63b3de1e30b4"

      def install
        bin.install "aws-jupyter"
      end
    end
    on_arm do
      url "https://github.com/scttfrdmn/aws-jupyter/releases/download/v0.3.0/aws-jupyter_0.3.0_darwin_arm64.tar.gz"
      sha256 "64f09f6070ef5e6f29aa5f344b93ace9054fc0d619ded40fc71e195e946bdde2"

      def install
        bin.install "aws-jupyter"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/scttfrdmn/aws-jupyter/releases/download/v0.3.0/aws-jupyter_0.3.0_linux_amd64.tar.gz"
        sha256 "f6d6cf2e328b51e63d81b6cc3603c26c2c1b4455f92692945f17dc8331f31cb9"

        def install
          bin.install "aws-jupyter"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/scttfrdmn/aws-jupyter/releases/download/v0.3.0/aws-jupyter_0.3.0_linux_arm64.tar.gz"
        sha256 "765e7ebf2562d1d4ed8d95d8e091865735ea1b09bd9c0eae66826d41dc25b529"

        def install
          bin.install "aws-jupyter"
        end
      end
    end
  end

  test do
    system "#{bin}/aws-jupyter", "--version"
  end
end
