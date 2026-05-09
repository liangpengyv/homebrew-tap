cask "agent-prism" do
  version "0.1.0-alpha"
  sha256 "bd8da3477125e800d9ec5d7d6ed3e974f1fad1941e6e4121aacfd7d9e5555571"

  url "https://github.com/liangpengyv/agent-prism/releases/download/v#{version}/AgentPrism_#{version}_aarch64.dmg"
  name "AgentPrism"
  desc "Local AI Agent Token usage monitor"
  homepage "https://github.com/liangpengyv/agent-prism"

  app "AgentPrism.app"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{appdir}/AgentPrism.app"],
      sudo: false
  end

  zap trash: [
    "~/.agent-prism",
  ]
end
