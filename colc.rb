class Colc < Formula
  version '1.0.23'
  homepage 'https://github.com/solaoi/colc'
  url "https://github.com/solaoi/colc/releases/download/v1.0.23/colc_darwin_amd64.tar.gz"
  sha256 '546b18db2dbd07d2a1c8cecbe17381298d08392ad1fc2f0bc6e0d702efc5b785'
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
