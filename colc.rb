class Colc < Formula
  version '1.0.3'
  homepage 'https://github.com/solaoi/colc'
  url "https://github.com/solaoi/colc/releases/download/v1.0.3/colc_darwin_amd64.tar.gz"
  sha256 '1b6f38a33c6f3aa0bf4d808a65f90d98a1096383ed26b97cd611b52ad3bb7249'
  head 'https://github.com/solaoi/colc.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'colc'
  end
end
