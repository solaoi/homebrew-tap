class Colc < Formula
  version '1.0.22'
  homepage 'https://github.com/solaoi/colc'
  url "https://github.com/solaoi/colc/releases/download/v1.0.22/colc_darwin_amd64.tar.gz"
  sha256 'e45bb46561bdd38d10cf2b0aa331a43973eb2e9da3aa2a363293a062c5a1b585'
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
