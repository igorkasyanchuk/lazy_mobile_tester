module LazyMobileTester
  module Helper
    IMG = "<img width='16' height='16' src='data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/PjxzdmcgaGVpZ2h0PSI0NjcuMzgiIGlkPSJzdmczNiIgdmVyc2lvbj0iMS4xIiB2aWV3Qm94PSIwIDAgNDY3LjM5ODAxIDQ2Ny4zOCIgd2lkdGg9IjQ2Ny4zOTgwMSIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczpjYz0iaHR0cDovL2NyZWF0aXZlY29tbW9ucy5vcmcvbnMjIiB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIiB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiIHhtbG5zOnNvZGlwb2RpPSJodHRwOi8vc29kaXBvZGkuc291cmNlZm9yZ2UubmV0L0RURC9zb2RpcG9kaS0wLmR0ZCIgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGRlZnMgaWQ9ImRlZnM0MCIvPjxnIGlkPSJMY2RfV2l0aF9UYWJsZXRfYW5kX21vYmlsZV9pY29uIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMjIuMzAxLC0yMi4zMSkiPjxnIGlkPSJnMzIiPjxwYXRoIGQ9Im0gMjU2LjAwMSwyMi4zMSBjIDEyOS4xMjEsMCAyMzMuNjk4LDEwNC45MTEgMjMzLjY5OCwyMzMuNjkgMCwxMjkuMTEzIC0xMDQuNTc3LDIzMy42OSAtMjMzLjY5OCwyMzMuNjkgLTEyOS4xMTgsMCAtMjMzLjcsLTEwNC41NzcgLTIzMy43LC0yMzMuNjkgMCwtMTI4Ljc3OSAxMDQuNTgyLC0yMzMuNjkgMjMzLjcsLTIzMy42OSB6IiBpZD0icGF0aDQiIHN0eWxlPSJjbGlwLXJ1bGU6ZXZlbm9kZDtmaWxsOiNmZDg0Njk7ZmlsbC1ydWxlOmV2ZW5vZGQiLz48cGF0aCBkPSJtIDQ3Mi41NSwxNjguMjM4IGMgMTEuMDk5LDI3LjIzNyAxNy4xNDksNTYuODIyIDE3LjE0OSw4Ny43NjIgMCwxMjkuMTEzIC0xMDQuNTc3LDIzMy42OSAtMjMzLjY5OCwyMzMuNjkgLTQuMzY2LDAgLTguNDA4LDAgLTEyLjc3NCwtMC4zMjQgTCA5NS4yNzUsMzc1LjAzNSBjIDAsLTM3LjY1OCAtMC4zMzQsLTgwLjAzMSAtMC4zMzQsLTExNy42ODkgMCwtNS4wMzkgNC4wMjcsLTkuMDc2IDguNzQyLC05LjA3NiA1LjcxMiwwIDExLjA5NCwwIDE2LjQ3MiwwIDAsLTQzLjA1IDAsLTg2LjQxNiAwLC0xMjkuOCBsIDI4Ny44NDMsLTMuMDI1IGMgMS42OCwzLjAyNCA2My4yMDYsNTIuNzkzIDY0LjU1Miw1Mi43OTMgeiIgaWQ9InBhdGg2IiBzdHlsZT0iY2xpcC1ydWxlOmV2ZW5vZGQ7ZmlsbDojZTQ3NzVmO2ZpbGwtcnVsZTpldmVub2RkIi8+PHBhdGggZD0ibSAzMTkuODkzLDM1NS44NjIgaCAtMTE1LjM0IGMgLTQuMzY2LDAgLTcuNzM1LC0zLjM1IC03LjczNSwtNy4zODYgdiAwIGMgMCwtNC4zODEgMy4zNjksLTcuNzMgNy43MzUsLTcuNzMgaCAxMTUuMzQgYyA0LjAzNywwIDcuNzMsMy4zNSA3LjczLDcuNzMgdiAwIGMgMCw0LjAzNyAtMy42OTMsNy4zODYgLTcuNzMsNy4zODYgeiIgaWQ9InBhdGg4IiBzdHlsZT0iY2xpcC1ydWxlOmV2ZW5vZGQ7ZmlsbDojMzI0YTVlO2ZpbGwtcnVsZTpldmVub2RkIi8+PHJlY3QgaGVpZ2h0PSI0MC4wMjUwMDIiIGlkPSJyZWN0MTAiIHN0eWxlPSJjbGlwLXJ1bGU6ZXZlbm9kZDtmaWxsOiMyMTMxM2U7ZmlsbC1ydWxlOmV2ZW5vZGQiIHdpZHRoPSI2MS44NzMwMDEiIHg9IjIzMS4xMTciIHk9IjMwMC43MjEwMSIvPjxyZWN0IGhlaWdodD0iMjAxLjA4IiBpZD0icmVjdDEyIiBzdHlsZT0iY2xpcC1ydWxlOmV2ZW5vZGQ7ZmlsbDojMzI0YTVlO2ZpbGwtcnVsZTpldmVub2RkIiB3aWR0aD0iMjkxLjU0MDk5IiB4PSIxMTYuNDU3IiB5PSIxMTUuNDQ0Ii8+PHJlY3QgaGVpZ2h0PSIxNjAuNzEyMDEiIGlkPSJyZWN0MTQiIHN0eWxlPSJjbGlwLXJ1bGU6ZXZlbm9kZDtmaWxsOiNmZmZmZmY7ZmlsbC1ydWxlOmV2ZW5vZGQiIHdpZHRoPSIyNTEuMTgyMDEiIHg9IjEzNi42MzIiIHk9IjEzNS42MzgiLz48cGF0aCBkPSJtIDQxNS4wNDEsMjU5LjM2OSBoIC02My44ODUgdiAxMDAuNTMgaCA2My44ODUgeiBNIDM4Ny40NzksMzY3LjYzIGMgMCwtMi42ODIgLTIuMDE0LC00LjY5NSAtNC4zNzEsLTQuNjk1IC0yLjM1NywwIC00LjM3MSwyLjAxNCAtNC4zNzEsNC42OTUgMCwyLjM1NyAyLjAxNCw0LjM3MSA0LjM3MSw0LjM3MSAyLjM1NywwIDQuMzcxLC0yLjAxNCA0LjM3MSwtNC4zNzEgeiBNIDM3Mi42ODcsMjUyLjk4NCBjIDAsMC42NjggMC4zMzQsMS4wMDIgMS4wMDIsMS4wMDIgaCAxOC44MjkgYyAwLjMzNSwwIDEuMDAzLC0wLjMzNCAxLjAwMywtMS4wMDIgMCwtMC42NzggLTAuNjY4LC0xLjAxMiAtMS4wMDMsLTEuMDEyIGggLTE4LjgyOSBjIC0wLjY2OCwwLjAwMSAtMS4wMDIsMC4zMzUgLTEuMDAyLDEuMDEyIHogbSA0OC40MTQsMS4zMzYgdiAxMTMuMzEgYyAwLDQuNzE0IC00LjAzNyw4Ljc1MSAtOC43NDEsOC43NTEgaCAtNTguNTAyIGMgLTQuNzE1LDAgLTguNzQyLC00LjAzNyAtOC43NDIsLTguNzUxIFYgMjU0LjMyIGMgMCwtNC43MDUgNC4wMjcsLTguNzMyIDguNzQyLC04LjczMiBoIDU4LjUwMiBjIDQuNzAzLDAgOC43NDEsNC4wMjcgOC43NDEsOC43MzIgeiIgaWQ9InBhdGgxNiIgc3R5bGU9ImNsaXAtcnVsZTpldmVub2RkO2ZpbGw6IzI1MzY0NTtmaWxsLXJ1bGU6ZXZlbm9kZCIvPjxyZWN0IGhlaWdodD0iMTAyLjg4OCIgaWQ9InJlY3QxOCIgc3R5bGU9ImNsaXAtcnVsZTpldmVub2RkO2ZpbGw6I2ZmZmZmZjtmaWxsLXJ1bGU6ZXZlbm9kZCIgd2lkdGg9IjY1LjIzODk5OCIgeD0iMzUwLjQ3OSIgeT0iMjU4LjM1Njk5Ii8+PHBhdGggZD0ibSAzODMuMTA4LDM2Mi45MzUgYyAtMi4zNTcsMCAtNC4zNzEsMi4wMTQgLTQuMzcxLDQuNjk1IDAsMi4zNTcgMi4wMTQsNC4zNzEgNC4zNzEsNC4zNzEgMi4zNTcsMCA0LjM3MSwtMi4wMTQgNC4zNzEsLTQuMzcxIDAsLTIuNjgyIC0yLjAxMywtNC42OTUgLTQuMzcxLC00LjY5NSB6IiBpZD0icGF0aDIwIiBzdHlsZT0iY2xpcC1ydWxlOmV2ZW5vZGQ7ZmlsbDojZmZmZmZmO2ZpbGwtcnVsZTpldmVub2RkIi8+PHBhdGggZD0ibSAzNzMuNjg4LDI1My45ODYgaCAxOC44MjkgYyAwLjMzNSwwIDEuMDAzLC0wLjMzNCAxLjAwMywtMS4wMDIgMCwtMC42NzggLTAuNjY4LC0xLjAxMiAtMS4wMDMsLTEuMDEyIGggLTE4LjgyOSBjIC0wLjY2OCwwIC0xLjAwMiwwLjMzNCAtMS4wMDIsMS4wMTIgMC4wMDEsMC42NjggMC4zMzUsMS4wMDIgMS4wMDIsMS4wMDIgeiIgaWQ9InBhdGgyMiIgc3R5bGU9ImNsaXAtcnVsZTpldmVub2RkO2ZpbGw6I2ZmZmZmZjtmaWxsLXJ1bGU6ZXZlbm9kZCIvPjxwYXRoIGQ9Im0gMTgxLjAxOSwyNTkuMzY5IGggLTgzLjczIHYgMTAwLjUzIGggODMuNzI5IHYgLTEwMC41MyB6IG0gLTYyLjIwNSwtNi4zODUgYyAwLDAuNjY4IDAuMzM5LDEuMDAyIDEuMDA3LDEuMDAyIGggMzguNjcgYyAwLjY3OCwwIDEuMzQxLC0wLjMzNCAxLjM0MSwtMS4wMDIgMCwtMC42NzggLTAuNjYzLC0xLjAxMiAtMS4zNDEsLTEuMDEyIGggLTM4LjY3IGMgLTAuNjY4LDAuMDAxIC0xLjAwNywwLjMzNSAtMS4wMDcsMS4wMTIgeiBtIDY4LjU4OSwxLjMzNiB2IDExMy4zMSBjIDAsNC43MTQgLTQuMDIzLDguNzUxIC05LjA3MSw4Ljc1MSBIIDk5Ljk3NiBjIC00LjcsMCAtOC43MzcsLTQuMDM3IC04LjczNywtOC43NTEgViAyNTQuMzIgYyAwLC00LjcwNSA0LjAzNywtOC43MzIgOC43MzcsLTguNzMyIGggNzguMzU2IGMgNS4wNDgsMCA5LjA3MSw0LjAyNyA5LjA3MSw4LjczMiB6IiBpZD0icGF0aDI0IiBzdHlsZT0iY2xpcC1ydWxlOmV2ZW5vZGQ7ZmlsbDojMjUzNjQ1O2ZpbGwtcnVsZTpldmVub2RkIi8+PHBhdGggZD0ibSAxMzkuMzI4LDM2Mi45MzUgYyAtMi42OTYsMCAtNC4zNzEsMi4wMTQgLTQuMzcxLDQuNjk1IDAsMi4zNTcgMS42NzUsNC4zNzEgNC4zNzEsNC4zNzEgMi4zNTMsMCA0LjM2NiwtMi4wMTQgNC4zNjYsLTQuMzcxIDAsLTIuNjgyIC0yLjAxMywtNC42OTUgLTQuMzY2LC00LjY5NSB6IiBpZD0icGF0aDI2IiBzdHlsZT0iY2xpcC1ydWxlOmV2ZW5vZGQ7ZmlsbDojZmZmZmZmO2ZpbGwtcnVsZTpldmVub2RkIi8+PHBhdGggZD0ibSAxMTkuODIxLDI1My45ODYgaCAzOC42NyBjIDAuNjc4LDAgMS4zNDEsLTAuMzM0IDEuMzQxLC0xLjAwMiAwLC0wLjY3OCAtMC42NjMsLTEuMDEyIC0xLjM0MSwtMS4wMTIgaCAtMzguNjcgYyAtMC42NjgsMCAtMS4wMDcsMC4zMzQgLTEuMDA3LDEuMDEyIDAsMC42NjggMC4zMzksMS4wMDIgMS4wMDcsMS4wMDIgeiIgaWQ9InBhdGgyOCIgc3R5bGU9ImNsaXAtcnVsZTpldmVub2RkO2ZpbGw6I2ZmZmZmZjtmaWxsLXJ1bGU6ZXZlbm9kZCIvPjxyZWN0IGhlaWdodD0iMTAwLjUzIiBpZD0icmVjdDMwIiBzdHlsZT0iY2xpcC1ydWxlOmV2ZW5vZGQ7ZmlsbDojZmZmZmZmO2ZpbGwtcnVsZTpldmVub2RkIiB3aWR0aD0iODMuNzI4OTk2IiB4PSI5Ny4yODkwMDEiIHk9IjI1OS4zNjg5OSIvPjwvZz48L2c+PGcgaWQ9IkxheWVyXzEiIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0yMi4zMDEsLTIyLjMxKSIvPjwvc3ZnPg=='/>".html_safe
    SCRIPT = "<script>if (window != window.parent) { document.getElementById('lazy_mobile_tester_button').remove(); } </script>".html_safe

    def lazy_mobile_tester_button
      button = button_to(IMG, url_for(params.permit!), method: :get, params: { _lazy: 1 }, style: LazyMobileTester.style, id: 'lazy_mobile_tester_button')
      button + SCRIPT
    end
  end
end