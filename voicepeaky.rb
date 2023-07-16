class Voicepeaky < Formula
  version '1.0.3'
  homepage 'https://github.com/solaoi/voicepeaky'
  url "https://github.com/solaoi/voicepeaky/releases/download/v1.0.3/voicepeaky_darwin_amd64.tar.gz"
  sha256 '71aac00ea55e775f1572b28f7942aff059153a51e34296bc1ed556781111f876'
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
