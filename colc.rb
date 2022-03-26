class Colc < Formula
  version '1.0.8'
  homepage 'https://github.com/solaoi/colc'
  url "https://github.com/solaoi/colc/releases/download/v1.0.8/colc_darwin_amd64.tar.gz"
  sha256 '457617a3c83d260c27c3cc5a233177c136245cea7de352132db8e38520922515'
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
