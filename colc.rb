class Colc < Formula
  version '1.0.24'
  homepage 'https://github.com/solaoi/colc'
  url "https://github.com/solaoi/colc/releases/download/v1.0.24/colc_darwin_amd64.tar.gz"
  sha256 'ea162b26d35bb53c2d5ebe58ecef64de413061a239dc8e54fb103300c79698ad'
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
