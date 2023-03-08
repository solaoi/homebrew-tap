class Broly < Formula
  version '1.0.0'
  homepage 'https://github.com/solaoi/broly'
  url "https://github.com/solaoi/broly/releases/download/v1.0.0/broly_darwin_amd64.tar.gz"
  sha256 '1d1d6f3b8b7fd5ce54134543957ad8cab38ed3e4096c838324f13a9850385475'
  head 'https://github.com/solaoi/broly.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'broly'
  end
end
