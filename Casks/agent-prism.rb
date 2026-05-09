cask "agent-prism" do
  version "0.1.1-alpha"
  sha256 "9d8ffe8b0cfdddd709de6143e54d400f4f707de1c2b16b18a6f25762a2329d5b"

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
