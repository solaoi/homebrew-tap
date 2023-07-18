class Voicepeaky < Formula
  version '1.0.5'
  homepage 'https://github.com/solaoi/voicepeaky'
  url "https://github.com/solaoi/voicepeaky/releases/download/v1.0.5/voicepeaky_darwin_amd64.tar.gz"
  sha256 'd39c2998e67e0732c5dbd6e1ffe31be44951db8de4d85400fc300149dcb0441f'
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
