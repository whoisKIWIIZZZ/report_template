#import "@preview/whu-report:0.1.0": *

#show: whu-report.with(
  course: "武汉大学计算机学院",
  title: "本科生课程设计报告",
  subtitle: "实验报告标题",
  instructor: "教师姓名",
  student-id: "你的学号",
  student-name: "你的姓名",
  major: "你的专业",
  course-name: "课程名称",
  date: "二○二六年五月",
  show-declaration: true,
)

= 概述

在这里写概述内容。

= 算法模型

== 第一节

内容...

= 实验代码

== 第一节

```py
# Python 代码示例
def hello():
    print("Hello, Typst!")
```

= 总结

总结内容...

#pagebreak()

#show: appendix-style

= 附录

== 代码段

附录内容...
