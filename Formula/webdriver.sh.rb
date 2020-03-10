class WebdriverSh < Formula
  desc "bash script for managing Nvidia web drivers"
  homepage "https://github.com/vulgo/webdriver.sh/"
  url "https://github.com/vulgo/webdriver.sh/archive/v1.5.8.tar.gz"
  sha256 "320380cb85606555f56a4495b1636e2c0003cf796b7a90095810b0d83f12899a"
  version "1.5.8"
  depends_on macos: :high_sierra
  def install
    bin.install "webdriver" => "webdriver"
  end
end