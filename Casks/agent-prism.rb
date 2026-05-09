cask "agent-prism" do
  version "0.1.2-alpha"
  sha256 "454c46af975aaf2f52328f7a90e2761d823644e3b73138f088949b1b24fb5281"

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
