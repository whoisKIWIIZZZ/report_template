#set page(paper: "a4", margin: (x: 2.5cm, y: 2.5cm))
#set text(font: ("Times New Roman","Songti SC"), size: 12pt)
#import "@preview/cuti:0.2.1": show-cn-fakebold

#show: show-cn-fakebold
#import "@preview/mitex:0.2.5": *
#show "，":","
#show "。": "."
#show math.equation: set text(purple, size: 1em)

#set raw(theme: "assets/code.tmTheme")
// Code block styling from original file
#show raw.where(block: false): it => {
    set text(size: 10pt,font: ("JetBrains Mono NL","SongTi SC"),rgb("#A9504A"))
    box(
  
  fill: rgb("#E5E5E4"),
  inset: (x: 2pt, y: 0pt),
  outset: (y: 3pt),
  radius: 4pt,
  it,
)

}
#show raw.where(block: true): it => {
  let lang = if it.has("lang") { it.lang } else { "TEXT" }
  set text(size: 9pt,font: ("Jetbrains Mono","SongTi SC"))
  block(
    fill: rgb("#FAFAF9"),
    stroke: 0.5pt + rgb("#CCD1D9"),
    radius: 3pt,
    width: 100%,
    inset: 0pt,
    clip: true,
    
      block(
        width: 100%,
        inset: 12pt,
        it,
      ),
    
  )
}

// ----------------------------------------------------------------------------
// Cover Page
// ----------------------------------------------------------------------------
#align(center)[
  #v(2em)
  #text(size: 22pt, weight: "bold", font: "Heiti SC")[武汉大学计算机学院]
  #v(1em)
  #text(size: 26pt, weight: "bold", font: "Heiti SC")[本科生课程设计报告]
  #v(4em)
  #text(size: 20pt, weight: "bold")[线性回归实验报告]
  #v(8em)

  #grid(
    columns: (auto, auto),
    row-gutter: 1.5em,
    column-gutter: 1em,
    align: (right, left),
    text(size: 14pt, weight: "bold")[专 业 名 称 :], text(size: 14pt)[jh],
    text(size: 14pt, weight: "bold")[课 程 名 称 :], text(size: 14pt)[ml],
    text(size: 14pt, weight: "bold")[指 导 教 师 :], text(size: 14pt)[dlx],
    text(size: 14pt, weight: "bold")[学 生 学 号 :], text(size: 14pt)[2024300000000],
    text(size: 14pt, weight: "bold")[学 生 姓 名 :], text(size: 14pt)[ysz],
  )

  #v(1fr)
  #text(size: 14pt)[二○二六年五月]
  #v(2em)
]