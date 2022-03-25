class Colc < Formula
  version '1.0.1'
  homepage 'https://github.com/solaoi/colc'
  url "https://github.com/solaoi/colc/releases/download/v1.0.1/colc_darwin_amd64.tar.gz"
  sha256 '67f851b571b968a122667b878fd182a1b15e96430c7df3ca22aaf952025d99e8'
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
