class Colc < Formula
  version '1.0.12'
  homepage 'https://github.com/solaoi/colc'
  url "https://github.com/solaoi/colc/releases/download/v1.0.12/colc_darwin_amd64.tar.gz"
  sha256 'a139a9e69729efa173a4f1deba510907d0138aeb305d3077f41d3c81577052a0'
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
