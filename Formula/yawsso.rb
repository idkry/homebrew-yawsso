class Yawsso < Formula
  include Language::Python::Virtualenv

  desc ""
  homepage ""
  url "https://github.com/victorskl/yawsso/archive/refs/tags/0.7.2.tar.gz"
  sha256 "a2f665d12f1d29095a3a103d61638308ea4e2184bce5810ad80eeebddffcfb51"
  license ""

  depends_on "python"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    virtualenv_install_with_resources
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test yawsso`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "true"
  end
end
