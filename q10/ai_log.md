核心提示：拒绝只含空白字符的姓名；只修改 cli.py，不改测试，并保留正常姓名行为。
智能体改动：在解析参数后使用 name.strip() 检查空白，并调用 p.error() 以 SystemExit(2) 结束。
测试结果：修复前测试为 1 failed，提示 DID NOT RAISE SystemExit；修复后为 1 passed。
人工验证：diff 仅新增两行空白检查；正常姓名仍输出 Hello, 25120014014!
