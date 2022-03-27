class Colc < Formula
  version '1.0.15'
  homepage 'https://github.com/solaoi/colc'
  url "https://github.com/solaoi/colc/releases/download/v1.0.15/colc_darwin_amd64.tar.gz"
  sha256 '3dd924aff214824f9cbc5c2efcab2e5b06d7a098f2036ec7c88ea0ad35c1d42c'
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
