class Voicepeaky < Formula
  version '1.0.4'
  homepage 'https://github.com/solaoi/voicepeaky'
  url "https://github.com/solaoi/voicepeaky/releases/download/v1.0.4/voicepeaky_darwin_amd64.tar.gz"
  sha256 '37aefaea44bd73053589af276fe4e339df758695ecaa5ecacf4d0adcf3869d0d'
  head 'https://github.com/solaoi/voicepeaky.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'voicepeaky'
  end
end
