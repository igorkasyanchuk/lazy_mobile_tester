require "lazy_mobile_tester/version"
require "lazy_mobile_tester/middleware"
require "lazy_mobile_tester/helper"
require "lazy_mobile_tester/engine"

module LazyMobileTester
  mattr_accessor :enabled
  @@enabled = true

  mattr_accessor :resolutions
  @@resolutions = {
    "XS" => {
      w: "320px",
      h: "640px",
      rotate: true,
    },
    "SM" => {
      w: "576px",
      h: "844px",
      rotate: true,
    },
    "MD" => {
      w: "834px",
      h: "1112px",
      rotate: true,
    },
    "LG" => {
      w: "1280px",
      h: "calc(100vh - var(--toolbar-height) - 10px)",
      rotate: false,
    },
    "XL" => {
      w: "1400px",
      h: "calc(100vh - var(--toolbar-height) - 10px)",
      rotate: false,
    },
    "100%" => {
      w: "100%",
      h: "calc(100vh - var(--toolbar-height) - 10px)",
      rotate: false,
    }
  }

  mattr_accessor :style
  @@style = %s(
    position: absolute;
    left: 0;
    top: 0;
    z-index: 99999;
    padding: 2px;
    font-size: 8px;
    background: #6f7dba;
    color: white;
    border: 0 none;
    border-bottom-right-radius: 6px;
  )

end
